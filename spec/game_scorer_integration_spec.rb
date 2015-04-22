require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('The rock, paper, scissors score path', {:type => :feature}) do
  it('Receives 1 or 2 user inputs and chooses a winner') do
    visit('/')
    fill_in('player1', :with => '1')
    fill_in('player2', :with => '3')
    click_button('FIGHT!')
    expect(page).to have_content('Player 1 Wins!')
  end
end
