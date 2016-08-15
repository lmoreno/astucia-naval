#encoding: UTF-8
Feature:
  Como jugador
  Quiero poder iniciar un juego
  Para poder jugar

  Scenario: quiero ver un titulo de bienvenida
    Given que abri la aplicacion
    Then debo ver "Bienvenido"

  Scenario: quiero ver el nombre de la aplicacion
    Given que abri la aplicacion
    Then debo ver "Astucia Naval"

  Scenario: quiero ir a la pagina del tablero
    Given que abri la aplicacion
    When hago click en boton "Posicionar barco"
    Then debo ver un tablero de tres por tres
