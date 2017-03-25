class Calculator

  attr_accessor :mode, :history

  def initialize(mode, history)
  	self.mode = mode
  	self.history = history
  end

  def self.add(a, b)
    a + b
  end

  def self.abs_add(a, b)

  end

  def self.subtract(a, b)
    a - b
  end

  def self.multiply(a, b)
  	 a * b
  end

  def self.divide(a, b)

  end

  def save_result(result)
  	history.save(result)
  end

  def last_result
  	history.last_result
  end

end