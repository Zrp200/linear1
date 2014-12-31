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
  
   	def initialize(x_int, y_int)
   		@x_intercept, @y_intercept, @slope = x_int, y_int, y_int / x_int
	end
	
	def coordinate_plane
		cp = Array.new(@@x_axis) {Array.new @@y_axis}
		x = 0
		for x_index in cp
			y = 0
			for y_index in x_index
				if @@borders && (x == 0 || y == 0)
					cp[x][y] = "#"
				elsif table[x] == y
					cp[x][y] = "X"
				else
					cp[x][y] = " "
				end
				y += 1
			end
			x += 1
		end
	end
			
  	def table
  		x = 0
  		t = Hash.new
  		until x > @@x_axis
  			y = eval_equation(x)
  			t[x] = y unless y.instance_of(Float)
  		end
  		return t
  	end
  		
  	def to_s
  		result = String.new
  		for x_index in coordinate_plane
  			for y_index in x_index
  				result << y_index
  			end
  			result << ?\n
  		end
  		return result
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
	
end
