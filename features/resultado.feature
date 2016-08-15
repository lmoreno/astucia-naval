#encoding: utf-8

Feature: As jugador
         Want saber si gané o perdí
         To finalizar el juego

Scenario:
    Given posicionamos barco en "A1" y atacamos "A1"
    Then en la página resultado debo encontrar la imagen "9827011.jpg"

Scenario:
    Given posicionamos barco en "A1" y atacamos "A2"
    Then en la página resultado debo encontrar la imagen "Lose.jpg"
