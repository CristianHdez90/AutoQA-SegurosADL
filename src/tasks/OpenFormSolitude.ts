import { Task, Interaction  } from "@serenity-js/core";
import { Click } from "@serenity-js/web";
import { SolicitudesPageUI } from "../ui/SolicitudesPageUI";

export class OpenFormSolitude{
    static withButtonRadica(){
        return Task.where('#actor accede al formulario de solicitudes',
                    Click.on(SolicitudesPageUI.BTN_RADICAR_SOLICITUDES),
                     // Espera opcional para asegurar carga completa
                    Interaction.where(`#wait 5 seconds`, async () => {
                        await new Promise(resolve => setTimeout(resolve, 5000));
                    }),
                );

    }
}