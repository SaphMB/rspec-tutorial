require_relative '../calculator'

describe Calculator do
  
  describe "add" do
    it "returns 3 adding 1 and 2" do
      expect(Calculator.add(1, 2)).to eq(3)
    end
    it "returns the correct number when adding a negative number" do
      expect(Calculator.add(1, -2)).to eq(-1)
    end
  end
  
  describe "subtract" do
  	it "return 5 if subtracting 5 from 10" do
  		expect(Calculator.subtract(10, 5)).to eq(5)
  		end
  end

end