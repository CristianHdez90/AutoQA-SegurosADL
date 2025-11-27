import { By, PageElement } from '@serenity-js/web';

export class SolicitudesPageUI {

    // --- Botón inicial ---
    static readonly BTN_RADICAR_SOLICITUDES = PageElement.located(
        By.xpath("//button[contains(text(),'Radica aquí tus solicitudes')]")
    ).describedAs('Botón Radica aquí tus solicitudes');

    // static CARD_SERVICIO(nombre: string) {
    //     return PageElement.located(
    //         By.xpath(`*//p[@class="card-title"][contains(.,'${nombre}')]`)            
    //     ).describedAs(`Tarjeta del servicio ${nombre}`);
    // }       

    // --- Select: ¿De cuál entidad nos escribes? ---
    static readonly SELECT_ENTIDAD = PageElement.located(
        By.xpath("//select[@formcontrolname='entity']")
    ).describedAs('Select Entidad');    

    static OPTION_ENTIDAD(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Entidad: ${nombre}`);
    } 

    // --- Select: ¿Qué trámite deseas realizar el día de hoy? ---
    static readonly SELECT_TRAMITE = PageElement.located(
        By.xpath("//select[@formcontrolname='proccess']")
    ).describedAs('Select Trámite');    

    static OPTION_TRAMITE(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Trámite: ${nombre}`);
    } 

    // --- Select: ¿Qué producto quieres cotizar? ---
    static readonly SELECT_PRODUCTO = PageElement.located(
        By.xpath("//select[@formcontrolname='policyType']")
    ).describedAs('Select Producto');

    static OPTION_PRODUCTO(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Producto: ${nombre}`);
    }

    // --- Select: ¿Para quién es la cotización que vas a solicitar? ---
    static readonly SELECT_DESTINATARIO = PageElement.located(
        By.xpath("//select[@formcontrolname='familyPolicyType']")
    ).describedAs('Select Destinatario');

    static OPTION_DESTINATARIO(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Destinatario: ${nombre}`);
    }

    // --- Botón Continuar ---
    static readonly BTN_CONTINUAR = PageElement.located(
        By.xpath("//button[contains(text(),'Continuar')]")
    ).describedAs('Botón Continuar');

    // =========================
    // FORMULARIO DE INFORMACIÓN
    // =========================

    static readonly SELECT_TIPO_DOCUMENTO = PageElement.located(
        By.xpath("(//select[@formcontrolname='document_type'])[1]")
    ).describedAs('Select Tipo Documento');

    static OPTION_TIPO_DOCUMENTO(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Tipo Documento: ${nombre}`);
    }

    static readonly INPUT_NUMERO_DOCUMENTO = PageElement.located(
        By.xpath("(//input[@formcontrolname='document_number'])[1]")
    ).describedAs('Input Número Documento');

    static readonly INPUT_NOMBRE = PageElement.located(
        By.xpath("(//input[@formcontrolname='names'])[1]")
    ).describedAs('Input Nombre');

    static readonly INPUT_APELLIDOS = PageElement.located(
        By.xpath("(//input[@formcontrolname='surnames'])[1]")
    ).describedAs('Input Apellidos');

    static readonly SELECT_EPS = PageElement.located(
        By.xpath("(//select[@formcontrolname='eps'])[1]")
    ).describedAs('Select EPS');

    static OPTION_EPS(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción EPS: ${nombre}`);
    }

    static readonly INPUT_FECHA_NACIMIENTO = PageElement.located(
        By.xpath("(//input[@formcontrolname='birthDate'])[1]")
    ).describedAs('Input Fecha Nacimiento');

    static readonly INPUT_TELEFONO = PageElement.located(
        By.xpath("//input[@formcontrolname='cellphone']")
    ).describedAs('Input Teléfono');

    static readonly INPUT_EMAIL = PageElement.located(
        By.xpath("//input[@formcontrolname='email']")
    ).describedAs('Input Email');

    static readonly SELECT_FORMA_PAGO = PageElement.located(
        By.xpath("//select[@formcontrolname='paymentOption']")
    ).describedAs('Select Forma de Pago');

    static OPTION_FORMA_PAGO(nombre: string) {
        return PageElement.located(
            By.xpath(`//option[@value='${nombre}']`)
        ).describedAs(`Opción Forma de Pago: ${nombre}`);
    }

    static CHECK_TERMINOS_CONDICIONES = PageElement.located(
        By.xpath("//input[@id='checkPolice1']")
    ).describedAs('Check ternimos y condiciones');

    static BUTTON_ENVIAR = PageElement.located(
        By.xpath("//button[@class='btn btn-primary rounded-5 w-100']")
    ).describedAs('Button enviar');



    // static MENSAJE_ESPERADO = PageElement.located(
    //     By.xpath("//div[@class='modal-dialog modal-md']//div/p")
    // ).describedAs('Mensaje esperado');

    static MENSAJE_ESPERADO = PageElement.located(
        By.xpath("*//div[@class='container m-1']//h2")
    ).describedAs('Mensaje esperado exitoso')


    // =========================
    // FORMULARIO DE INFORMACIÓN CONYUGE
    // =========================
    static readonly SELECT_TIPO_DOCUMENTO_CONYUGE = PageElement.located(
        By.xpath("(//select[@formcontrolname='document_type'])[2]")
    ).describedAs('Select Tipo Documento');

    static readonly INPUT_NUMERO_DOCUMENTO_CONYUGE = PageElement.located(
        By.xpath("(//input[@formcontrolname='document_number'])[2]")
    ).describedAs('Input Número Documento');

    static readonly INPUT_NOMBRE_CONYUGE = PageElement.located(
        By.xpath("(//input[@formcontrolname='names'])[2]")
    ).describedAs('Input Nombre');

    static readonly INPUT_APELLIDOS_CONYUGE = PageElement.located(
        By.xpath("(//input[@formcontrolname='surnames'])[2]")
    ).describedAs('Input Apellidos');

    static readonly SELECT_EPS_CONYUGE = PageElement.located(
        By.xpath("(//select[@formcontrolname='eps'])[2]")
    ).describedAs('Select EPS');

    static readonly INPUT_FECHA_NACIMIENTO_CONYUGE = PageElement.located(
        By.xpath("(//input[@formcontrolname='birthDate'])[2]")
    ).describedAs('Input Fecha Nacimiento');


    // =========================
    // FORMULARIO DE INFORMACIÓN MASCOTA
    // =========================
    static readonly INPUT_NOMBRE_MASCOTA = PageElement.located(
        By.xpath("//input[@formcontrolname='petName']")
    ).describedAs('Input Nombre Mascota');
    
    static readonly SELECT_TIPO_MASCOTA = PageElement.located(
        By.xpath("//select[@formcontrolname='pet_type']")
    ).describedAs('Select Tipo Mascota');    

    static readonly INPUT_EDAD_MASCOTA = PageElement.located(
        By.xpath("//input[@formcontrolname='pet_age']")
    ).describedAs('Input Edad Mascota');

    static readonly INPUT_RAZA_MASCOTA = PageElement.located(
        By.xpath("//select[@formcontrolname='pet_breed']")
    ).describedAs('Input Raza Mascota');        
    
    static readonly INPUT_GENERO_MASCOTA = PageElement.located(
        By.xpath("//select[@formcontrolname='pet_gender']")
    ).describedAs('Input Genero Mascota');

    
}