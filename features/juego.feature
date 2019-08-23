Feature: Juego

    Como jugador
    Quiero ver la palabra a adivinar con guiones
    para poder adivinarla

Scenario: Se muestra la palabra a adivinar con guiones
    Given la palabra es "dog"
    Then debo ver "---"
    And debo ver "LANGMAN"

