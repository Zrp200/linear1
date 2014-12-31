class Graph
  	# Class methods
  	
    @@borders, @@x_axis, @@y_axis = true, 50, 50
    
    def x_axis
        @@x_axis
    end
    
    def x_axis=(num)
    	caa(num)
    	@@x_axis = num
	end
	
	def y_axis
  
    def has_borders?
        @@borders
    end
  
=begin
Toggles the graph borders
@param bool [true, false] Sets whether the graph has borders
@raise [ArgumentError] if bool is not true or false
@return [void]
=end
    def borders=(bool)
        raise ArgumentError, "Argument must be true or false" unless bool == true | false
        @@borders = bool
    end
    
=begin
@return [Integer]
=end
  attr_reader :x_intercept
  alias zero x_intercept
  alias solution x_intercept
  
  attr_reader :y_intercept
  
  attr_reader :slope
  
# Instance Methods
  
    def initialize(x, y)
   		@x_intercept, @y_intercept, @slope = x, y, y / x
        @cp = Array.new(@@x_axis) do
            Array.new(@@y) {" "}
        end
    end
  
	private
  
  	def check_axis_argument(arg)
		if !(num.kind_of?("Integer"))
            raise ArgumentError, "Argument must be a kind of Integer"
        elsif num % 2 != 0
            raise ArgumentError, "Argument must be even"
       	end
 	end
            
  		
  	alias caa check_axis_arguments
	    
