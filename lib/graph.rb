class Graph

  	
    @@borders, @@x_axis, @@y_axis = true, 50, 50
   
    
    def x_axis
        @@x_axis
    end
    
    def x_axis=(num)
    	caa(num)
    	@@x_axis = num
	end
	
	def y_axis
		@@y_axis
	end
	
	def y_axis=(num)
		caa num
		@@y_axis = num
	end
  
    def has_borders?
        @@borders
    end
  
    def borders=(bool)
        raise ArgumentError, "Argument must be true or false" unless bool == true | false
        @@borders = bool
    end
 
 
  attr_reader :x_intercept
  alias zero x_intercept
  alias solution x_intercept
  
  attr_reader :y_intercept
  alias b y_intercept
 
  attr_reader :slope
  alias m slope
  
  attr_reader :coordinate_plane
  alias cp coordinate_plane
  
  
   	def initialize(x, y)
   		@x_intercept, @y_intercept, @slope = x, y, y / x
		xi, yi = 0, 0
	end
  
  	def equation
  		"y = #{m}x + #{b}"
  	end
 
  	def eval_equation(x)
  		m * x + b
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
	
