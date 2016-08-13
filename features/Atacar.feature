#encoding: utf-8

Feature: Como jugador
  Deseo poder atacar a la maquina
  Para ganar el juego


  Scenario: Accedo a la pagina de atacar
    Given estoy en la pagina de atacar
    Then debo ver un tablero de tres por tres
