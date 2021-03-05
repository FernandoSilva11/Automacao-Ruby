class SuggestPage
  include Capybara::DSL

  def open
    visit "https://www.instagram.com/explore/people/suggested/"
  end

  def follow(num)
    num.times {
      first("button", :text => "Seguir").click
      sleep 3
    }
  end
end
