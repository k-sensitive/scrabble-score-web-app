require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns the scrabble score') do
    visit('/')
    fill_in('word', :with => 'cat')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
