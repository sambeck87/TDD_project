require 'rspec'
require_relative '../solver'

describe Solver do # rubocop:disable Metrics/BlockLength: Block has too many lines
  context 'When testing Factorial method' do
    it 'When number is 5, factorial should return 120' do
      factorial = Solver.factorial(5)
      expect(factorial).to eq(120)
    end

    it 'When number is 0, factorial should return 1' do
      factorial = Solver.factorial(0)
      expect(factorial).to eq(1)
    end

    it 'When number is negative, factorial should raise an exception' do
      expect { Solver.factorial(-1) }.to raise_error(Solver::NotCorrectNumber, 'The number should be a positive number')
    end
  end

  context 'When testing reverse method' do
    it 'Reverse method should return "olleH" when it receive "Hello' do
      reverse = Solver.reverse('Hello')
      expect(reverse).to eq('olleH')
    end
  end

  context 'When testing fizzbuzz method' do
    it 'If the number is divisible by 3 return fizz' do
      fizzbuzz = Solver.fizzbuzz(3)
      expect(fizzbuzz).to eq('fizz')
    end
    it 'If the number is divisible by 5 return buzz' do
      fizzbuzz = Solver.fizzbuzz(5)
      expect(fizzbuzz).to eq('buzz')
    end
    it 'If the number is divisible by 3 and 5 return fizzbuzz' do
      fizzbuzz = Solver.fizzbuzz(15)
      expect(fizzbuzz).to eq('fizzbuzz')
    end
    it 'If the number is not divisible by 3 nor 5 return the number as an string' do
      fizzbuzz = Solver.fizzbuzz(13)
      expect(fizzbuzz).to eq('13')
    end
  end
end
