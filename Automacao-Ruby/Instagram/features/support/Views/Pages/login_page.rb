class LoginPage
  include Capybara::DSL

  def open
    visit "/"
  end

  def login_with(email, senha)
    find("[name=username]").set email

    find("[name=password]").set senha

    find('button[type="submit"]').click

    sleep 5
  end
end
