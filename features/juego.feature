Feature: Juego

    Como jugador
    Quiero ver la palabra a adivinar con guiones
    para poder adivinarla

Scenario: Se muestra la palabra a adivinar con guiones
    Given que abri la aplicacion
    And la palabra es "dog"
    Then debo ver "---"