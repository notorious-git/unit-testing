require "rspec"

class ChangeMachine
  def make_coin_array(value)
    coin_array = []

    num_quarters = value / 25
    num_quarters.times do
      coin_array << 25
      value -= 25
    end

    num_dimes = value / 10
    num_dimes.times do
      coin_array << 10
      value -= 10
    end

    num_nickels = value / 5
    num_nickels.times do
      coin_array << 5
      value -= 5
    end

    value.times do
      coin_array << 1
    end
    return coin_array
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
