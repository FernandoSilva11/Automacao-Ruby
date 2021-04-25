
Feature: Instagram
    
    Scenario: Seguir 20 pessoas

        Given Faço login no instagram com "seu-email" e "sua-senha".
        When Vou até a pagina de sugestões de amizade
        Then Sigo 20 pessoas