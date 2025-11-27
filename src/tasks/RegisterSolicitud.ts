import { Task, Duration, Wait } from '@serenity-js/core';
import { Enter, Click, Scroll, Select, isVisible, isEnabled } from '@serenity-js/web';
import { Ensure, equals, includes} from "@serenity-js/assertions";
import { SolicitudesPageUI } from '../ui/SolicitudesPageUI';
import { UserColaboradorData } from "../models/UserColaboradorData";
import { UserConyugeData } from "../models/UserConyugeData";

export class RegisterSolicitud{
    static withDataParaMi(data: UserColaboradorData) {
            console.log('📋 Filling out the Colaborador registration form with data:');
            console.log(`Tipo Documento: ${data.tipoDocumento}`);
            console.log(`Numero Documento: ${data.numeroDocumento}`);
            console.log(`Nombres: ${data.nombres}`);
            console.log(`Apellidos: ${data.apellidos}`);
            console.log(`eps: ${data.eps}`);            
            console.log(`Fecha Nacimiento: ${data.fechaNacimiento}`);
            console.log(`Telefono: ${data.telefono}`);
            console.log(`Correo: ${data.correo}`);
            console.log(`FormaPago: ${data.formaPago}`);
            
            return Task.where('#actor completa el formulario de solicitud para mí',

                Select.value(data.tipoDocumento).from(SolicitudesPageUI.SELECT_TIPO_DOCUMENTO),
                Enter.theValue(data.numeroDocumento).into(SolicitudesPageUI.INPUT_NUMERO_DOCUMENTO),
                Enter.theValue(data.nombres).into(SolicitudesPageUI.INPUT_NOMBRE),
                Enter.theValue(data.apellidos).into(SolicitudesPageUI.INPUT_APELLIDOS),
                Select.value(data.eps).from(SolicitudesPageUI.SELECT_EPS),
                Enter.theValue(data.fechaNacimiento).into(SolicitudesPageUI.INPUT_FECHA_NACIMIENTO),
                Enter.theValue(data.telefono).into(SolicitudesPageUI.INPUT_TELEFONO),
                Enter.theValue(data.correo).into(SolicitudesPageUI.INPUT_EMAIL),    
                Wait.until(SolicitudesPageUI.SELECT_FORMA_PAGO, isEnabled()),
                //Ensure.that(SolicitudesPageUI.SELECT_FORMA_PAGO.text(), equals(data.formaPago)),
                Select.option(data.formaPago).from(SolicitudesPageUI.SELECT_FORMA_PAGO),

                Wait.for(Duration.ofSeconds(3)),                 
                
            );
                 
   }

    static withDataParaConyuge(data: UserConyugeData) {
            console.log('📋 Filling out the familiar registration form with data:');
            console.log(`Tipo Documento: ${data.tipoDocumentoC}`);
            console.log(`Numero Documento: ${data.numeroDocumentoC}`);
            console.log(`Nombres: ${data.nombresC}`);
            console.log(`Apellidos: ${data.apellidosC}`);
            console.log(`eps: ${data.epsC}`);            
            console.log(`Fecha Nacimiento: ${data.fechaNacimientoC}`);

            return Task.where('#actor completa el formulario de solicitud para conyuge',

                Select.value(data.tipoDocumentoC).from(SolicitudesPageUI.SELECT_TIPO_DOCUMENTO_CONYUGE),
                Enter.theValue(data.numeroDocumentoC).into(SolicitudesPageUI.INPUT_NUMERO_DOCUMENTO_CONYUGE),
                Enter.theValue(data.nombresC).into(SolicitudesPageUI.INPUT_NOMBRE_CONYUGE),
                Enter.theValue(data.apellidosC).into(SolicitudesPageUI.INPUT_APELLIDOS_CONYUGE),
                Select.value(data.epsC).from(SolicitudesPageUI.SELECT_EPS_CONYUGE),
                Enter.theValue(data.fechaNacimientoC).into(SolicitudesPageUI.INPUT_FECHA_NACIMIENTO_CONYUGE),
                Wait.for(Duration.ofSeconds(5)),                 
                
            );
    }

    static withDataParaMascota(data: any) {
        console.log('📋 Filling out the mascota registration form with data:');
        console.log(`Tipo Mascota: ${data.tipoMascota}`);
        console.log(`Nombre Mascota: ${data.nombreMascota}`);
        console.log(`Raza Mascota: ${data.razaMascota}`);
        console.log(`Edad Mascota: ${data.edadMascota}`);
        return Task.where('#actor completa el formulario de solicitud para mascota',
            Enter.theValue(data.nombreMascota).into(SolicitudesPageUI.INPUT_NOMBRE_MASCOTA),
            Select.value(data.tipoMascota).from(SolicitudesPageUI.SELECT_TIPO_MASCOTA),      
            Enter.theValue(data.edadMascota).into(SolicitudesPageUI.INPUT_EDAD_MASCOTA),      
            Select.value(data.razaMascota).from(SolicitudesPageUI.INPUT_RAZA_MASCOTA),
            Select.value(data.generoMascota).from(SolicitudesPageUI.INPUT_GENERO_MASCOTA),
            Wait.for(Duration.ofSeconds(3)),                 
        );  
    }


}