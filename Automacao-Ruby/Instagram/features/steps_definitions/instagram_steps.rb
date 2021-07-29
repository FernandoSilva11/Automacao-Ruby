class SuggestPage
  include Capybara::DSL

  def open
    visit "https://www.instagram.com/explore/people/suggested/"
  end

  def Seguir(num)
    num.times { |i|
      linha = all('div[aria-labelledby^="f"]')[i]
      linha.first("button", :text => "Seguir").click
    }
  end

  def resultado
    return all("button", :text => "Solicitado", wait: 5).count + all("button", :text => "Seguindo", wait: 5).count
  end
end
