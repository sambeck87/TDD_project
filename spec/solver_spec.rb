require 'rspec'
require_relative '../solver'

describe Solver do
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
      factorial = Solver.factorial(-1)
      expect { factorial }.to raise_error(NotCorrectNumber)
    end
  end

  context 'When testing reverse method' do
    it 'Reverse method should return "olleH" when it receive "Hello' do
      reverse = Solver.reverse('Hello')
      expect(reverse).to eq('olleH')
    end
  end
end
