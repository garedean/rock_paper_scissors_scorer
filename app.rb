require('sinatra')
require('sinatra/reloader')
require('./lib/game_scorer')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/winner') do

  @player1 = params.fetch('player1')

  @player2 = params.fetch('player2')

  player1_winner = @player1.beats?(@player2)
  player2_winner = @player2.beats?(@player1)

  if player1_winner
    @result = "Player 1 Wins!"
  elsif player2_winner
    @result = "Player 2 Wins!"
  else
    @result = "It was a tie!"
  end

  erb(:winner)
end
