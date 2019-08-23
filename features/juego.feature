Feature: Juego

    Como jugador
    Quiero ver la palabra a adivinar con guiones
    para poder adivinarla

Scenario: Se muestra la palabra a adivinar con guiones
    Given la palabra es "dog"
    Then debo ver "---"
    And debo ver "LANGMAN"

    Given la palabra es "agile"
    Then debo ver "-----"
    And debo ver "LANGMAN"

    Given la palabra es "cucumber"
    Then debo ver "--------"
    And debo ver "LANGMAN"

