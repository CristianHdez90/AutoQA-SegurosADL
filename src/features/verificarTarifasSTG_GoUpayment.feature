Feature: Verificar tarifas de productos para colaborador
  Como colaborador del sistema
  Quiero visualizar las tarifas de los productos disponibles
  Para validar que se muestren correctamente según mis condiciones

  Background:
    Given Cristian opens the application
    When he loads the authentication token and goes to the homepage
    And el usuario está en el módulo "/benefits/portfolio-services"

  @Verificar_Tarifas_Productos_Colaborador_stg_GoUpayment @tarifaGoUpaymentStg
  Scenario Outline: Verificar tarifas para Colaborador
    And el colaborador actualiza su fecha de nacimiento con "<Id>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del colaborador con "<Id>"
    And el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador activa el beneficio "<producto>", "<metodoPago>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto

    Examples:
      | servicio | categoria        | entidad | producto | metodoPago          | tarifa  | Id | birthDate                | eps | condicion   |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  322560 | 35 | 2007-05-05T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  446482 | 35 | 2005-05-05T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  518064 | 35 | 1983-05-05T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  690248 | 35 | 1973-05-05T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina | 1607986 | 35 | 1964-05-05T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  310590 | 35 | 2007-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  434512 | 35 | 1990-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  506094 | 35 | 1984-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  678278 | 35 | 1974-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina | 1596016 | 35 | 1965-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  213464 | 35 | 2007-01-27T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  355243 | 35 | 1990-01-27T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  412197 | 35 | 1984-01-27T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  628458 | 35 | 1974-01-27T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina | 1295229 | 35 | 1965-01-27T00:00:00.000Z |  13 | Plena       |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  201494 | 35 | 2007-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  343273 | 35 | 1990-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  400227 | 35 | 1984-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  616488 | 35 | 1974-01-27T00:00:00.000Z |  15 | Simulteidad |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina | 1283259 | 35 | 1965-01-27T00:00:00.000Z |  15 | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  |35| 2011-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  |35| 2010-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  |35| 1964-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1234590 |35| 1960-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1340535 |35| 1954-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1340535 |35| 1950-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 |35| 1949-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 |35| 1945-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 |35| 1940-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 |35| 1934-05-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  |35| 2011-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  |35| 2010-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  |35| 1964-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1213590 |35| 1960-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1319535 |35| 1954-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 |35| 1949-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 |35| 1945-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 |35| 1940-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 |35| 1935-05-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  |35| 2011-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  |35| 2010-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  |35| 1964-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 824775  |35| 1960-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 896595  |35| 1954-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 |35| 1950-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 |35| 1945-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 |35| 1940-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 |35| 1935-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  |35| 2011-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  |35| 2010-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  |35| 1964-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 803775  |35| 1960-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 803775  |35| 1960-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 875595  |35| 1954-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 |35| 1950-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 |35| 1945-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 |35| 1940-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 |35| 1935-01-27T00:00:00.000Z | 13  | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colmédica  | Diamante    |  Descuento de nómina       | 474330  |35| 1990-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colmédica  | Diamante    |  Descuento de nómina       | 1416711 |35| 1960-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colmédica  | Diamante    |  Descuento de nómina       | 463158  |35| 1990-01-27T00:00:00.000Z | 1   | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colmédica  | Diamante    |  Descuento de nómina       | 1405539 |35| 1960-01-27T00:00:00.000Z | 1   | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colmédica  | Zafiro      |  Descuento de nómina       | 402642  |35| 1990-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colmédica  | Zafiro      |  Descuento de nómina       | 1183226 |35| 1960-01-27T00:00:00.000Z | 15  | Plena       |
  # | Salud    | Medicinas prepagadas | Colmédica  | Zafiro      |  Descuento de nómina       | 391470  |35| 1990-01-27T00:00:00.000Z | 1   | Simulteidad |
  # | Salud    | Medicinas prepagadas | Colmédica  | Zafiro      |  Descuento de nómina       | 1134883 |35| 1960-01-27T00:00:00.000Z | 1   | Simulteidad |
  # | Salud    | Medicinas prepagadas | Emermédica | Emermédica  |  Descuento de nómina       | 44065   |35| 1960-01-27T00:00:00.000Z | 1   | Simulteidad |

  @Verificar_Tarifas_Productos_Familiar_stg_GoUpayment @tarifaGoUpaymentStg
  Scenario Outline: Verificar tarifas de productos para Familiar
    And el colaborador actualiza la fecha de nacimiento del familiar con "<Id>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del familiar con "<Id>"
    And el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador activa el beneficio "<producto>", "<metodoPago>" para el familiar "<nombreFamiliar>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto

    Examples:
      | servicio | categoria        | entidad | producto | metodoPago          | tarifa  | Id | birthDate                | eps | condicion   | nombreFamiliar |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  322560 |  7 | 2007-05-05T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  446482 |  7 | 2005-05-05T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  518064 |  7 | 1983-05-05T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  690248 |  7 | 1973-05-05T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina | 1607986 |  7 | 1964-05-05T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  310590 |  7 | 2007-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  434512 |  7 | 1990-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  506094 |  7 | 1984-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina |  678278 |  7 | 1974-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Global   | Descuento de nómina | 1596016 |  7 | 1965-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  213464 |  7 | 2007-01-27T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  355243 |  7 | 1990-01-27T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  412197 |  7 | 1984-01-27T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  628458 |  7 | 1974-01-27T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina | 1295229 |  7 | 1965-01-27T00:00:00.000Z |  13 | Plena       | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  201494 |  7 | 2007-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  343273 |  7 | 1990-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  400227 |  7 | 1984-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina |  616488 |  7 | 1974-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
      | Salud    | Pólizas de salud | Sura    | Clásica  | Descuento de nómina | 1283259 |  7 | 1965-01-27T00:00:00.000Z |  15 | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  | 7 | 2011-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  | 7 | 2010-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 384300  | 7 | 1964-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1234590 | 7 | 1960-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1340535 | 7 | 1954-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1340535 | 7 | 1950-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 | 7 | 1949-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 | 7 | 1945-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 | 7 | 1940-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1563660 | 7 | 1934-05-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  | 7 | 2011-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  | 7 | 2010-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 363300  | 7 | 1964-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1213590 | 7 | 1960-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1319535 | 7 | 1954-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 | 7 | 1949-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 | 7 | 1945-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 | 7 | 1940-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Integral    |  Descuento de nómina       | 1542660 | 7 | 1935-05-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  | 7 | 2011-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  | 7 | 2010-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695  | 7 | 1964-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 824775  | 7 | 1960-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 896595  | 7 | 1954-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 | 7 | 1950-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 | 7 | 1945-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 | 7 | 1940-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1115310 | 7 | 1935-01-27T00:00:00.000Z | 15  | Plena       | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  | 7 | 2011-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  | 7 | 2010-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 226695  | 7 | 1964-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 803775  | 7 | 1960-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 875595  | 7 | 1954-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 | 7 | 1950-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 | 7 | 1945-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 | 7 | 1940-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |
  # | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 1094310 | 7 | 1935-01-27T00:00:00.000Z | 13  | Simulteidad | Ana López      |

  @Verificar_Tarifas_PlanDental_Plena
  Scenario Outline: PlanDental_Plena
    And el colaborador actualiza su fecha de nacimiento con "<idColaborador>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del colaborador con "<idColaborador>"
    And el colaborador actualiza la fecha de nacimiento del familiar con "<idFamiliar>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del familiar con "<idFamiliar>"
    And el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador activa el beneficio "<producto>", "<metodoPago>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador confirma el beneficio
    And el colaborador tambien activa el beneficio "<producto>", "<metodoPago>" para el familiar "<nombreFamiliar>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador desactiva el beneficio

    Examples:
      | servicio | categoria | entidad | producto | metodoPago | tarifa | idColaborador | idFamiliar | birthDate | eps | condicion | nombreFamiliar |
      #| Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina       | 19110  |35           | 7       | 2019-05-05T00:00:00.000Z | 15  | Plena     | Ana López      |
      #| Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina       | 35490  |35           | 7       | 2015-05-05T00:00:00.000Z | 15  | Plena     | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 56070  |35           | 7       | 2009-05-05T00:00:00.000Z | 15  | Plena                                     |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 52815  |35           | 7       | 1999-05-05T00:00:00.000Z | 15  | Plena                                     |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 54495  |35           | 7       | 1963-05-05T00:00:00.000Z | 15  | Plena                                     |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 18155  |35           | 7       | 2019-05-05T00:00:00.000Z | 13  | Usuarios afiliados solo a EPS Sanitas  5% |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 33716  |35           | 7       | 2015-05-05T00:00:00.000Z | 13  | Usuarios afiliados solo a EPS Sanitas  5% |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 53267  |35           | 7       | 2009-05-05T00:00:00.000Z | 13  | Usuarios afiliados solo a EPS Sanitas  5% |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 50174  |35           | 7       | 1999-05-05T00:00:00.000Z | 13  | Usuarios afiliados solo a EPS Sanitas  5% |Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 51770  |35           | 7       | 1963-05-05T00:00:00.000Z | 13  | Usuarios afiliados solo a EPS Sanitas  5% |Ana López      |

  @Verificar_Add_Medisanitas @smoke
  Scenario Outline: Add Medisanitas
    And el colaborador actualiza su fecha de nacimiento con "<idColaborador>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del colaborador con "<idColaborador>"
    And el colaborador actualiza la fecha de nacimiento del familiar con "<idFamiliar>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del familiar con "<idFamiliar>"
    And el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador activa el beneficio "<producto>", "<metodoPago>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador confirma el beneficio
    And el colaborador tambien activa el beneficio "<producto>", "<metodoPago>" para el familiar "<nombreFamiliar>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador confirma afiliación familiar

    Examples:
      | servicio | categoria | entidad | producto | metodoPago | tarifa | idColaborador | idFamiliar | birthDate | eps | condicion | nombreFamiliar |
      #| Salud    | Medicinas prepagadas | Colsanitas | Medisanitas |  Descuento de nómina       | 247695 |35           | 7       | 1990-05-05T00:00:00.000Z | 15  | Plena     | Ana López      |

  @Verificar_Tarifas_PlanDental_ConColsanitas_Medisanitas
  Scenario Outline: PlanDental - Con Colsanitas o Medisanitas
    And el colaborador actualiza su fecha de nacimiento con "<idColaborador>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del colaborador con "<idColaborador>"
    And el colaborador actualiza la fecha de nacimiento del familiar con "<idFamiliar>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del familiar con "<idFamiliar>"
    And el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador activa el beneficio "<producto>", "<metodoPago>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador confirma el beneficio
    And el colaborador tambien activa el beneficio "<producto>", "<metodoPago>" para el familiar "<nombreFamiliar>"
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador desactiva el beneficio

    Examples:
      | servicio | categoria | entidad | producto | metodoPago | tarifa | idColaborador | idFamiliar | birthDate | eps | condicion | nombreFamiliar |
     # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina       | 17199  |35           | 7       | 2019-05-05T00:00:00.000Z | 13  | Usuarios Colsanitas o Medisanitas afiliados a EPS Sanitas   10% | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 31941  |35           | 7       | 2015-05-05T00:00:00.000Z | 13  | Usuarios Colsanitas o Medisanitas afiliados a EPS Sanitas   10% | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 50463  |35           | 7       | 2009-05-05T00:00:00.000Z | 13  | Usuarios Colsanitas o Medisanitas afiliados a EPS Sanitas   10% | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 47534  |35           | 7       | 1999-05-05T00:00:00.000Z | 13  | Usuarios Colsanitas o Medisanitas afiliados a EPS Sanitas   10% | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 49046  |35           | 7       | 1963-05-05T00:00:00.000Z | 13  | Usuarios Colsanitas o Medisanitas afiliados a EPS Sanitas   10% | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 17581  |35           | 7       | 2019-05-05T00:00:00.000Z | 15  | Usuarios Colsanitas o Medisanitas afiliados a otra EPS  8%      | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 32651  |35           | 7       | 2015-05-05T00:00:00.000Z | 15  | Usuarios Colsanitas o Medisanitas afiliados a otra EPS  8%      | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 52584  |35           | 7       | 2009-05-05T00:00:00.000Z | 15  | Usuarios Colsanitas o Medisanitas afiliados a otra EPS  8%      | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 48590  |35           | 7       | 1999-05-05T00:00:00.000Z | 15  | Usuarios Colsanitas o Medisanitas afiliados a otra EPS  8%      | Ana López      |
  # | Salud    | Anexos de salud | Colsanitas | Plan dental |  Descuento de nómina  | 50135  |35           | 7       | 1963-05-05T00:00:00.000Z | 15  | Usuarios Colsanitas o Medisanitas afiliados a otra EPS  8%      | Ana López      |

  @Verificar_Delete_Medisanitas
  Scenario Outline: Delete Medisanitas
    And el colaborador actualiza la fecha de nacimiento del familiar con "<idFamiliar>", "<birthDate>" y "<eps>"
    Then la respuesta del API debe ser exitosamente para la actualización del familiar con "<idFamiliar>"
    When el selecciona el "<servicio>", "<categoria>" y selecciona la "<entidad>"
    And el colaborador desactiva el beneficio "<producto>", "<metodoPago>"
    And el colaborador desactiva el beneficio "<producto>", "<metodoPago>" para el familiar "<nombreFamiliar>"++
    Then la plataforma muestra el "<producto>" disponible y la respectiva "<tarifa>" del producto
    When el colaborador confirma afiliación familiar

    Examples:
      | servicio | categoria            | entidad    | producto    | metodoPago          | tarifa | idColaborador | idFamiliar | birthDate                | eps | condicion | nombreFamiliar |
      | Salud    | Medicinas prepagadas | Colsanitas | Medisanitas | Descuento de nómina | 247695 |             5 |          7 | 1990-05-05T00:00:00.000Z |  15 | Plena     | Ana López      |
