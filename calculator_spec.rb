require 'rspec'
require_relative 'calculator.rb'

describe 'Calculator' do
  context '#add' do
    it 'returns the sum of all numbers' do
      calc = Calculator.new
      calc.push(2)
      calc.push(5)
      calc.push(3)
      total = calc.add
      expect(total).to be(10)
    end
  end
end