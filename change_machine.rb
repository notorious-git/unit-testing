require "rspec"

class ChangeMachine
  def make_coin_array(value)
    denominations = [25, 10, 5, 1]
    coin_array = []
    denominations.each do |denomination|
      num_coins = value / denomination
      num_coins.times do
        coin_array << denomination
        value -= denomination
      end
    end
    coin_array
  end
end

RSpec.describe ChangeMachine do
  describe "#make_coin_array" do
    it "should return [1] if given 1" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(1)
      expect(result).to eq([1])
    end

    it "should return [1, 1] if given 2" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(2)
      expect(result).to eq([1, 1])
    end

    it "should return [5] if given 5" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(5)
      expect(result).to eq([5])
    end

    it "should return [10] if given 10" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(10)
      expect(result).to eq([10])
    end

    it "should return [25] if given 25" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(25)
      expect(result).to eq([25])
    end

    it "should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1] if given 119" do
      machine = ChangeMachine.new
      result = machine.make_coin_array(119)
      expect(result).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end
  end
end
