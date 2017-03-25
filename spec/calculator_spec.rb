require_relative '../calculator'
require_relative '../history'

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
  	it "return the correct result when substracting 5 from -10" do
  		expect(Calculator.subtract(-10, 5)).to eq(-15)
  	end
  end

  describe "multiply" do
  	it "should retun 25 when 5 * 5" do
  		expect(Calculator.multiply(5, 5)).to eq(25)
  	end
  end

  describe "divide" do
  	it "returns a mocked result" do
  		allow(Calculator).to receive(:divide).with(1, 1).and_return(10)
  		expect(Calculator.divide(1, 1)).to eq (10)
  	end
  end

  describe "abs_add" do
  	it "return a subbed result of 10 when -5 and -15 is added using abs_add" do
  		allow(Calculator). to receive(:abs_add).with(-5, -5).and_return(10)
  		expect(Calculator.abs_add(-5, -5)).to eq(10)
  	end
  end

  describe "mode" do
  	it "should be set to scientific" do
  		history = History.new
  		mycalc = Calculator.new('scientific', history)
  		expect(mycalc.mode).to eq('scientific')
  	end
  end

  describe "history" do
  	it "should save a result" do
  		history = History.new
  		mycalc = Calculator.new('scientific', history)
  		result = Calculator.add(1,1)
  		mycalc.save_result(result)

  		expect(history.last_result).to eq(2)
  	end

  	it "should be mocked" do
  		history = double(:history)
  		mycalc = Calculator.new('scientific', history)

  		#set up mocked values
  		allow(history).to receive(:save).and_return(5)
  		allow(history).to receive(:last_result).and_return(5)

  		#expectations
  		expect(mycalc.last_result).to eq(5)
  	end
  end

end