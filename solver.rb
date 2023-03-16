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
end
