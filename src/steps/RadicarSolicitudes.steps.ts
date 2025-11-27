// import { Given, When, Then } from '@cucumber/cucumber';
// import { Ensure, equals } from '@serenity-js/assertions';
// import { OpenPage } from '../tasks/OpenPage';
// import { Actor, actorInTheSpotlight, actorCalled } from '@serenity-js/core';
// import {OpenFormSolitude} from '../tasks/OpenFormSolitude'
// import { SeleccionarOpcionesSolicitud } from '../tasks/SeleccionarOpcionesSolicitud';
// import { RegisterSolicitud } from '../tasks/RegisterSolicitud';
// import {AceptarEnviar} from '../tasks/AceptarEnviar';
// import {ReviewSolicitud} from '../questions/ReviewSolicitud';
// import { LastResponse } from '@serenity-js/rest';
// import { BrowseTheWeb, Navigate } from '@serenity-js/web';


// Given('{actor} accede a la aplicación', { timeout: 40000 }, async (actor: Actor) => {
//     console.log('🚀 Opening the application');
//     await actor.attemptsTo(OpenPage.atFormUrl());    
//   });

//   Given('{pronombre} usuario hace clic en el botón Radica aquí tus solicitudes', { timeout: 40000 }, async (actor: Actor) => {
//     await actor.attemptsTo(OpenFormSolitude.withButtonRadica());
    
//   });

//   When('{pronombre} usuario realiza el flujo seleccionando la entidad {string}, el trámite {string}, el producto {string}, el destinatario {string} y hace clic en el botón Continuar', 
//     { timeout: 40000 }, 
//     async (actor: Actor, entidad: string, tramite: string, producto:string, destinatario:string ) => {
//     await actor.attemptsTo(SeleccionarOpcionesSolicitud.with(entidad,tramite,producto,destinatario));
    
//   });

//   When('{pronombre} usuario completa el formulario con:',{ timeout: 40000 }, async (actor: Actor, dataTable) => {
//     // Convierte la tabla en un array de objetos
//         const rows = dataTable.hashes();
    
//         // Recorre las filas 
//         for (const data of rows) {
//           await actorInTheSpotlight().attemptsTo(
//             RegisterSolicitud.withData(data) // Usar solo la primera fila
//           );
//         }
    
//   });

//   When('{pronombre} usuario marca el checkbox Acepto términos y condiciones y hace clic en el botón Enviar solicitud', { timeout: 40000 }, async (actor: Actor) => {
//     await actor.attemptsTo(AceptarEnviar.on());
    
//   });  

//   Then('{pronombre} sistema debe mostrar un modal con el mensaje {string}', { timeout: 40000 }, async (actor: Actor, mensaje:string) => {
//     // Verificar que el texto sea el esperado
//     await actor.attemptsTo(
//         Ensure.that(ReviewSolicitud.MensajeExitoso, equals(mensaje))
//     );
    
    
//   });

import { Response, Page as PlaywrightPage } from 'playwright';
import { Given, When, Then } from '@cucumber/cucumber';
import { Actor, Log } from '@serenity-js/core';
import { BrowseTheWeb } from '@serenity-js/web';
import { Ensure, equals } from '@serenity-js/assertions';

import { OpenPage } from '../tasks/OpenPage';
import { OpenFormSolitude } from '../tasks/OpenFormSolitude';
import { SeleccionarOpcionesSolicitud } from '../tasks/SeleccionarOpcionesSolicitud';
import { RegisterSolicitud } from '../tasks/RegisterSolicitud';
import { AceptarEnviar } from '../tasks/AceptarEnviar';
import { ReviewSolicitud } from '../questions/ReviewSolicitud';

let apiResponseBody: unknown;

Given('{actor} accede a la aplicación', { timeout: 40000 }, async (actor: Actor) => {
  
  await actor.attemptsTo(OpenPage.atFormUrl());

  // 1) Obtén el wrapper de Serenity
  const serenityPage = await BrowseTheWeb.as(actor).currentPage();
  // 2) Obtén la página nativa de Playwright
  // The Serenity Page wrapper type may not expose nativePage in typings, so cast to any and
  // use nativePage() if available, otherwise fall back to the 'page' property.
  const serenityAny: any = serenityPage;
  const nativePage: PlaywrightPage = serenityAny.nativePage
    ? await serenityAny.nativePage()
    : serenityAny.page;

  // 3) Intercepta respuestas del navegador
  nativePage.on('response', async (response: Response) => {
    const url = response.url();
    const status = response.status();

    if (url.includes('/api/remisiones')) {
      try {
        apiResponseBody = await response.json();
        console.log(`📡 Intercepted API: ${url} [${status}]`);
        console.log('Body:', apiResponseBody);
      } catch (err) {
        console.error('Error parsing response:', err);
      }
    }
  });

});

Given('{pronombre} usuario hace clic en el botón Radica aquí tus solicitudes', { timeout: 40000 }, async (actor: Actor) => {
  await actor.attemptsTo(OpenFormSolitude.withButtonRadica());
});

When(
  '{pronombre} usuario realiza el flujo seleccionando la entidad {string}, el trámite {string}, el producto {string}, el destinatario {string} y hace clic en el botón Continuar',
  { timeout: 40000 },
  async (actor: Actor, entidad: string, tramite: string, producto: string, destinatario: string) => {
   
    await actor.attemptsTo(SeleccionarOpcionesSolicitud.with(entidad, tramite, producto, destinatario));
  }
);

When('{pronombre} usuario completa el formulario con:', { timeout: 40000 }, async (actor: Actor, dataTable) => {
  for (const data of dataTable.hashes()) {
    await actor.attemptsTo(RegisterSolicitud.withDataParaMi(data));
  }
});

When('{pronombre} usuario completa el formulario para el conyuge con:', { timeout: 40000 }, async (actor: Actor, dataTable) =>{
      for (const data of dataTable.hashes()) {
        await actor.attemptsTo(RegisterSolicitud.withDataParaConyuge(data));
      }
});

When('{pronombre} usuario completa el formulario para la mascota con:', { timeout: 40000 }, async (actor: Actor, dataTable) => {
    for (const data of dataTable.hashes()) {
      await actor.attemptsTo(RegisterSolicitud.withDataParaMascota(data));
    }
});



When(
  '{pronombre} usuario marca el checkbox Acepto términos y condiciones y hace clic en el botón Enviar solicitud',
  { timeout: 40000 },
  async (actor: Actor) => {
    await actor.attemptsTo(AceptarEnviar.on());

    // Espera breve para que se dispare la respuesta (puedes refinar esto con waitForResponse de la Opción B)
    await new Promise((r) => setTimeout(r, 1500));

    await actor.attemptsTo(Log.the(apiResponseBody));

    // Si tu API devuelve { success: true }, valida:
    //await actor.attemptsTo(Ensure.that((apiResponseBody as any)?.success, equals(true)));
  }
);

Then('{pronombre} sistema debe mostrar un modal con el mensaje {string}', { timeout: 40000 }, async (actor: Actor, mensaje: string) => {
  await actor.attemptsTo(Ensure.that(ReviewSolicitud.MensajeExitoso, equals(mensaje)));
});