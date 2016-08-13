#encoding: utf-8

Feature: Como jugador
  Deseo poder atacar a la maquina
  Para ganar el juego


  Scenario: Accedo a la pagina de atacar
    Given estoy en la pagina de atacar
    Then debo ver un tablero de tres por tres

  Scenario: Me indica que estoy en mi turno de atacar
    Given estoy en la pagina de atacar
    Then debo poder ver el mensaje "Es tu turno! Haz click en donde deseas atacar"

  Scenario: Hago un ataque exitoso
    Given estoy en la pagina de atacar
    When hago click en casilla "B2"
    Then debo ver la casilla "B2" de color "#00ff00"
