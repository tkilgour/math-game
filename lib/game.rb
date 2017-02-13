require_relative 'question'
require_relative 'player'

class Game

  attr_accessor :players, :current_player

  def initialize
    @players = [Player.new, Player.new]
    @current_player = 0
  end


  def change_turn
    if @current_player == 0
      @current_player = 1
    else
      @current_player = 0
    end
  end

  def lose_life
    @players[@current_player].lives -= 1
  end

  def response(correct)
    if correct
      puts "Player #{@current_player + 1}: Hooray! Nicely done."
    else
      puts "Player #{@current_player + 1}: ZOMG No NO NO!"
    end
  end

  def current_scores
    puts "P1: #{@players[0].lives}/3 vs P2: #{@players[1].lives}/3"
  end

  def ask_question
    question = Question.new
    problem = question.generate_problem
    puts "Player #{@current_player + 1}: What does #{problem[0]} plus #{problem[1]} equal?"
    print '>'
    answer = gets.chomp.to_i
    if question.check_answer(answer)
      self.response(true)
    else
      self.response(false)
      self.lose_life
    end
  end




end
