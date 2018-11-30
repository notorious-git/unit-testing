require "rspec"

class Fizzbuzz
  def spitter(number)
    return "FIZZBUZZ" if number % 15 == 0
    return "FIZZ" if number % 3 == 0
    return "BUZZ" if number % 5 == 0
    return number
  end

  def run
    (1..100).each do |number|
      puts spitter(number)
    end
  end
end

fizzbuzz = Fizzbuzz.new
fizzbuzz.run

RSpec.describe Fizzbuzz do
  describe "#spitter" do
    it "should return 1 if given 1" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(1)
      expect(result).to eq(1)
    end

    it "should return 2 if given 2" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(2)
      expect(result).to eq(2)
    end

    it "should return FIZZ if given 3" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(3)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 5" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(5)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZ if given 6" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(6)
      expect(result).to eq("FIZZ")
    end

    it "should return BUZZ if given 10" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(10)
      expect(result).to eq("BUZZ")
    end

    it "should return FIZZBUZZ if given 15" do
      fizzbuzz = Fizzbuzz.new
      result = fizzbuzz.spitter(15)
      expect(result).to eq("FIZZBUZZ")
    end
  end
end
