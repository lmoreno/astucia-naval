#encoding: utf-8

Feature: As jugador
         Want saber si gané o perdí
         To finalizar el juego

Scenario:
    Given ingresamos a la página resultado con "win"
    Then debo poder ver la imagen "9827011.jpg"

    Scenario:
        Given ingresamos a la página resultado con "lose"
        Then debo poder ver la imagen "Lose.jpg"
