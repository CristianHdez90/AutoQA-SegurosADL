import { Task, Duration, Wait } from '@serenity-js/core';
import { Enter, Click, Scroll, Select, isVisible, isEnabled } from '@serenity-js/web';
import { SolicitudesPageUI } from '../ui/SolicitudesPageUI';


export class AceptarEnviar{
    static on() {
        return Task.where('#actor acepta termninos y condiciones y envia formulario de solicitud',

            Wait.for(Duration.ofSeconds(3)),  
            Click.on(SolicitudesPageUI.CHECK_TERMINOS_CONDICIONES),    
            Click.on(SolicitudesPageUI.BUTTON_ENVIAR),
            Wait.for(Duration.ofSeconds(7)),  
    
        );
    }

}