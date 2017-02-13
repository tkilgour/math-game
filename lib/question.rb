class Question
  attr_reader :numbers

  def generate_problem
    @numbers = [rand(20) + 1, rand(20) + 1]
    @answer = @numbers[0] + @numbers[1]

    @numbers
  end

  def check_answer(number)
    @answer == number
  end

end