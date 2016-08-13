#encoding: utf-8

Feature: As jugador
         Want poder ver el tablero de juego
         To poder jugar

Scenario:
    Given ingresamos al juego
    Then debo ver un tablero de tres por tres

    Scenario:
        Given ingresamos al juego
        Then debo ver las coordenadas del tablero
