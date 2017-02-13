require 'pry'

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/question'


game = Game.new

loop do
  break if game.players[0].lives == 0 || game.players[1].lives == 0
  game.ask_question
  game.change_turn

  if game.players[0].lives == 0
    puts "Player 2 wins with a score of #{game.players[1].lives}/3"
    puts '----- GAME OVER -----'
    puts 'Goodo bye!'
  elsif game.players[1].lives == 0
    puts "Player 1 wins with a score of #{game.players[0].lives}/3"
    puts '----- GAME OVER -----'
    puts 'Goodo bye!'
  else
    puts "P1: #{game.players[0].lives}/3 vs P2: #{game.players[1].lives}/3"
    puts '----- NEW TURN -----'
  end
end



