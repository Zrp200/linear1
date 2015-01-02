class LinearGraph

    @@graph_borders, @@x_axis, @@y_axis = true, 140, 70
    
    	def self.x_axis
        	(0..(@@x_axis)).to_a
	end
    
    	def self.x_axis=(num)
    		caa(num)
    		@@x_axis = num
	end
	
	def self.y_axis
		(0..(@@y_axis)).to_a
	end
	
	def self.y_axis=(num)
		caa num
		@@y_axis = num
	end
  
    	def self.has_borders?
    		@@borders
	end
  	def graph
  		y = -1
		graph = Array.new(@@y_axis) do
			y += 1
			x = -1
			Array.new(@@x_axis) do
				x += 1
				format_pair x, y
			end
		end
	end

	def self.borders=(bool)
		raise ArgumentError, "Argument must be true or false" unless bool == true | false
		@@borders = bool
	end
 
# @return [Integer] the x intercept of the graph
	attr_reader :slope
	alias m slope
  
	attr_reader :y_intercept
	alias b y_intercept
  
   	def initialize(slope, y_int)
   		@slope, @y_intercept = slope, y_int
	end
	
	def x_intercept
		f(0)
	end
	alias x_int x_intercept
	alias zero x_intercept
	alias solution x_intercept
	
=begin
The XY table
@note There are no floats
@return [Hash]
=end
  	def xy
  		table = Hash.new
  		for y in Quad1.y_axis
  			for x in Quad1.x_axis
  				table[y] = x if f(x) == y
  			end
  		end
  		return table
  	end
  	
  	def domain # @return [Array<Integer>] the values of the xy hash
  		xy.values
  	end
  	
  	def range # @return [Array<Integer>] the keys of the xy hash
  		xy.keys
  	end
  		
=begin
Displays graph
@return [String] the graph
=end
  	def to_s
  		result = String.new
  		for y_index in plot.reverse
  			for x_index in y_index
  				result << x_index
  			end
  			result << ?\n
  		end
  		return result.center 80
  	end
 
  	def f(x)
  		@slope * x + @y_intercept
  	end
  	
  	private
  	
  	def check_axis_argument(arg)
		if !(num.kind_of?(Integer) )
			raise ArgumentError, "Argument must be a kind of Integer"
		elsif num % 2 != 0
			raise ArgumentError, "Argument must be even"
		end
 	end
 
	alias caa check_axis_argument
		
	def format_pair(x, y)
		if @@borders && ( (x == 0 || x == @@x_axis - 1) || (y == 0 || y == @@y_axis - 1 ) )
			"#"
		elsif xy[y] == x
			?\u00B7
		else
			" "
		end
	end	
	
end
