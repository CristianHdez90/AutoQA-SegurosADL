Feature: Validar radicación completa de solicitud
  Como colaborador del sistema
  Quiero radicar una solicitud llenando todos los campos y confirmando el envío
  Para verificar que el flujo funcione correctamente y se muestre el mensaje de éxito

  Background:
    Given Usertest accede a la aplicación

  @Validar_Formulario_Radicacion_Para_Mí
  Scenario Outline: Radicar solicitud con datos completos y confirmación para mí
    Given el usuario hace clic en el botón Radica aquí tus solicitudes
    When el usuario realiza el flujo seleccionando la entidad "<entidad>", el trámite "<tramite>", el producto "<producto>", el destinatario "<destinatario>" y hace clic en el botón Continuar
    And el usuario completa el formulario con:
      | tipoDocumento   | numeroDocumento   | nombres   | apellidos   | eps   | fechaNacimiento   | telefono   | correo   | formaPago   |
      | <tipoDocumento> | <numeroDocumento> | <nombres> | <apellidos> | <eps> | <fechaNacimiento> | <telefono> | <correo> | <formaPago> |
    And el usuario marca el checkbox Acepto términos y condiciones y hace clic en el botón Enviar solicitud
    Then el sistema debe mostrar un modal con el mensaje "✅ Tu solicitud ha sido enviada correctamente"

    Examples:
      | entidad     | tramite            | producto                             | destinatario | tipoDocumento        | numeroDocumento | nombres    | apellidos | eps  | fechaNacimiento | telefono   | correo                  | formaPago |
      | Seguros ADL | Cotizar una póliza | Póliza de salud o medicina prepagada | Para mí      | Cédula de ciudadanía |       123456777 | JuanPepito | Zabala    | Sura |      1985-05-12 | 3001234567 | CristianPepito@test.com | Bolsa     |

  @Validar_Formulario_Radicacion_Para_mi_cónyuge
  Scenario Outline: Radicar solicitud con datos completos y confirmación para cónyuge
    Given el usuario hace clic en el botón Radica aquí tus solicitudes
    When el usuario realiza el flujo seleccionando la entidad "<entidad>", el trámite "<tramite>", el producto "<producto>", el destinatario "<destinatario>" y hace clic en el botón Continuar
    And el usuario completa el formulario con:
      | tipoDocumento   | numeroDocumento   | nombres   | apellidos   | eps   | fechaNacimiento   | telefono   | correo   | formaPago   |
      | <tipoDocumento> | <numeroDocumento> | <nombres> | <apellidos> | <eps> | <fechaNacimiento> | <telefono> | <correo> | <formaPago> |
    And el usuario completa el formulario para el conyuge con:
      | tipoDocumentoC   | numeroDocumentoC   | nombresC   | apellidosC   | epsC   | fechaNacimientoC   |
      | <tipoDocumentoC> | <numeroDocumentoC> | <nombresC> | <apellidosC> | <epsC> | <fechaNacimientoC> |
    And el usuario marca el checkbox Acepto términos y condiciones y hace clic en el botón Enviar solicitud
    Then el sistema debe mostrar un modal con el mensaje "✅ Tu solicitud ha sido enviada correctamente"

    Examples:
      | entidad     | tramite            | producto                             | destinatario        | tipoDocumento        | numeroDocumento | nombres    | apellidos | eps  | fechaNacimiento | telefono   | correo                  | formaPago | tipoDocumentoC       | numeroDocumentoC | nombresC | apellidosC | epsC    | fechaNacimientoC |
      | Seguros ADL | Cotizar una póliza | Póliza de salud o medicina prepagada | Para mi hijo o hija | Cédula de ciudadanía |       123456777 | JuanPepito | Zabala    | Sura |      1985-05-12 | 3001234567 | CristianPepito@test.com | Bolsa     | Tarjeta de identidad |        123456778 | Anita    | Gomez      | Sanitas |       2010-08-20 |
      #| Seguros ADL | Cotizar una póliza | Póliza de salud o medicina prepagada | Para mi cónyuge     | Cédula de ciudadanía |       123456777 | JuanPepito | Zabala    | Sura |      1985-05-12 | 3001234567 | CristianPepito@test.com | Bolsa     | Cédula de ciudadanía |        123456778 | MariaPepita | Gomez      | Sanitas |       1990-08-20 |

  @Validar_Formulario_Radicacion_Para_mi_mascota
  Scenario Outline: Radicar solicitud con datos completos y confirmación para cónyuge
    Given el usuario hace clic en el botón Radica aquí tus solicitudes
    When el usuario realiza el flujo seleccionando la entidad "<entidad>", el trámite "<tramite>", el producto "<producto>", el destinatario "<destinatario>" y hace clic en el botón Continuar
    And el usuario completa el formulario con:
      | tipoDocumento   | numeroDocumento   | nombres   | apellidos   | eps   | fechaNacimiento   | telefono   | correo   | formaPago   |
      | <tipoDocumento> | <numeroDocumento> | <nombres> | <apellidos> | <eps> | <fechaNacimiento> | <telefono> | <correo> | <formaPago> |
    And el usuario completa el formulario para la mascota con:
      | nombresM   | tipoMascota   | edadMascota   | razaMascota   | generoMascota   |
      | <nombresM> | <tipoMascota> | <edadMascota> | <razaMascota> | <generoMascota> |
    And el usuario marca el checkbox Acepto términos y condiciones y hace clic en el botón Enviar solicitud
    Then el sistema debe mostrar un modal con el mensaje "✅ Tu solicitud ha sido enviada correctamente"

    Examples:
      | entidad     | tramite            | producto                 | destinatario    | tipoDocumento        | numeroDocumento | nombres     | apellidos   | eps  | fechaNacimiento | telefono   | correo               | formaPago | nombresM | tipoMascota | edadMascota | razaMascota      | generoMascota |
      | Seguros ADL | Cotizar una póliza | Póliza para mis mascotas | Para mi mascota | Cédula de ciudadanía |       123456777 | JuanPepito  | Zabala      | Sura |      1985-05-12 | 3001234567 | JuanPepito@test.com  | Bolsa     | Jupiter  | Perro       |      3 años | Golden Retriever | Macho         |
      | Seguros ADL | Cotizar una póliza | Póliza para mis mascotas | Para mi mascota | Cédula de ciudadanía |       123456889 | MarioPepito | Sancheztest | Sura |      1985-05-12 | 3001234889 | MarioPepito@test.com | Bolsa     | Rocky    | Gato        |      2 años | Siamés           | Macho         |
