class Graph1
  
=begin
@return [Integer]
=end
  attr_reader :x_intercept
  alias zero x_intercept
  alias solution x_intercept
  
  attr_reader :y_intercept
  
  attr_reader :slope
  
  def initialize(x, y)
    @x_intercept, @y_intercept, @slope = x, y, y / x
  end
