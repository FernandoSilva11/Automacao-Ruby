
Feature: Instagram
    
    Scenario: Seguir N pessoas

        Given Faço login no instagram com "seuEmail" e "suaSenha".
        When Vou até a pagina de sugestões de amizade
        And Sigo 5 pessoas
        Then Página deve exibir essas pessoas com o status Seguindo
