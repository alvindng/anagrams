require('capybara/rspec')
require("./app")
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the user input path', {:type => :feature}) do
  it "processes the words submitted by a user and compares to see if they are anagrams" do
    visit('/')
    fill_in('word', :with => 'fox')
    fill_in('anagram', :with => 'ofx')
    click_button('Anagram?')
    expect(page).to have_content(true)
  end
end
