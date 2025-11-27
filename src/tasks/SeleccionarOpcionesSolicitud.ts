import { Task, Wait, Duration, Interaction } from '@serenity-js/core';
import { Click, Select, Scroll } from '@serenity-js/web';
import { SolicitudesPageUI } from "../ui/SolicitudesPageUI";

export class SeleccionarOpcionesSolicitud{
    static with(entidad: string, tramite: string, producto:string, destinatario:string){
        return Task.where(`#actor selecciona las opciones para emitir solicitud de tramite ${tramite} para el producto ${producto}`,
              //Wait.for(Duration.ofSeconds(3)), // espera general para asegurar renderizado             
              //Click.on(SolicitudesPageUI.SELECT_ENTIDAD),
              Select.option(entidad).from(SolicitudesPageUI.SELECT_ENTIDAD),
              Select.option(tramite).from(SolicitudesPageUI.SELECT_TRAMITE),
              Select.option(producto).from(SolicitudesPageUI.SELECT_PRODUCTO),
              Select.option(destinatario).from(SolicitudesPageUI.SELECT_DESTINATARIO),
              Click.on(SolicitudesPageUI.BTN_CONTINUAR), 

              //Wait.for(Duration.ofSeconds(3)), // espera general para asegurar renderizado              
              //Click.on(SolicitudesPageUI.OPTION_ENTIDAD(entidad)),  

            //   Wait.for(Duration.ofSeconds(3)), // espera general para asegurar renderizado              
            //   Click.on(SolicitudesPageUI.SELECT_TRAMITE),
            //   //Wait.for(Duration.ofSeconds(3)), // espera general para asegurar renderizado              
            //   Click.on(SolicitudesPageUI.OPTION_TRAMITE(tramite)),                
              
              
              Wait.for(Duration.ofSeconds(3)),           
              
             
            );

    }

}