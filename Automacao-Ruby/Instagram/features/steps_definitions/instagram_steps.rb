Before do
  @login_page = LoginPage.new
  @sugestao_page = SuggestPage.new
end

Given("Faço login no instagram com {string} e {string}") do |email, senha|
  @login_page.open
  @login_page.login_with(email, senha)
end

When("Vou até a pagina de sugestões de amizade") do
  @sugestao_page.open
end

Then("Sigo {int} pessoas") do |numero|
  @sugestao_page.follow(numero)
end
