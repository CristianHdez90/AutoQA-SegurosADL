import { Question, AnswersQuestions, UsesAbilities, actorInTheSpotlight, Wait, Duration } from '@serenity-js/core';
import { Ensure } from '@serenity-js/assertions';
import { Scroll, isVisible, Text } from '@serenity-js/web';
import { SolicitudesPageUI } from '../ui/SolicitudesPageUI';

export class ReviewSolicitud{

    /**
     * Question para verificar visibilidad del mensaje de éxito
     * y que contenga el texto "¡Los datos fueron guardados con éxito!"
     */
    public static readonly MensajeExitoso = Question.about(
        'el mensaje de éxito de registro de solicitud',
        async (actor: AnswersQuestions & UsesAbilities) => {


            Wait.for(Duration.ofSeconds(5)),     
            // Scroll hasta el elemento y asegurar visibilidad
            await actorInTheSpotlight().attemptsTo(
                Scroll.to(SolicitudesPageUI.MENSAJE_ESPERADO),
                Ensure.that(SolicitudesPageUI.MENSAJE_ESPERADO, isVisible())
            );
            const successMessage = Text.of(SolicitudesPageUI.MENSAJE_ESPERADO).answeredBy(actor);            
           
            console.log('Mensaje:', successMessage);  
            return successMessage;
        }
    );

}