#encoding: utf-8

Feature: As jugador
         Want poder posicionar mi barco
         To comenzar el juego

Scenario:
    Given ingresamos al tablero
    Then debo poder ver el mensaje "Selecciona la posición de tu barco"

Scenario:
        Given ingresamos al tablero
        Then debo poder dar click en la coordenada "A1" para posicionar el barco
