require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def add_three(number)
    return number + 3
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(5, 3)
      expect(result).to eq(2)
    end
  end

  describe "#multiply" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(4, 2)
      expect(result).to eq(8)
    end
  end

  describe "#divide" do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      result = calculator.divide(40, 2)
      expect(result).to eq(20)
    end
  end

  describe "#square" do
    it "should return a number times itself" do
      calculator = Calculator.new
      result = calculator.square(5)
      expect(result).to eq(25)
    end
  end

  describe "#power" do
    it "should return a number times itself by the given exponent" do
      calculator = Calculator.new
      result = calculator.power(2, 4)
      expect(result).to eq(16)
    end
  end

  describe "#add_three" do
    it "should add 3 to a given number" do
      calculator = Calculator.new
      result = calculator.add_three(7)
      expect(result).to eq(10)
    end
  end
end
