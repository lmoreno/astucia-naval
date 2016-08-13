#encoding: UTF-8
Feature:
  Como jugador
  Quiero poder iniciar un juego
  Para poder jugar

  Scenario: quiero ver un titulo de bienvenida
    Given que abri la aplicacion
    Then debo ver "Bienvenido"
