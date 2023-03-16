require 'pry'

class Solver
  class NotCorrectNumber < StandardError; end

  def self.factorial(number)
    @number = number

    case @number <=> 0
    when 1
      @number * factorial(@number - 1)
    when 0
      1
    when -1
      raise NotCorrectNumber, 'The number should be a positive number'
    end
  end

  def self.reverse(word)
    @word = word
    @word = @word.reverse
  end

  def self.fizzbuzz(number)
    @number = number

    if (@number % 3).zero? && (@number % 5).zero?
      'fizzbuzz'
    elsif (@number % 5).zero?
      'buzz'
    elsif (@number % 3).zero?
      'fizz'
    else
      @number.to_s
    end
  end
end
