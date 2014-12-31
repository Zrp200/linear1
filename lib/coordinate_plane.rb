class CoordinatePlane

    @@borders, @@x_axis, @@y_axis = true, 50, 50
    
    def self.x_axis
        @@x_axis
    end
    
    def self.x_axis=(num)
    	caa(num)
    	@@x_axis = num
	end
	
	def self.y_axis
		@@y_axis
	end
	
	def self.y_axis=(num)
		caa num
		@@y_axis = num
	end
  
    def self.has_borders?
    	@@borders
    end
  
	def self.borders=(bool)
		raise ArgumentError, "Argument must be true or false" unless bool == true | false
		@@borders = bool
	end
 
# @return [Integer] the x intercept of the graph
	attr_reader :x_intercept
	alias zero x_intercept
	alias solution x_intercept
  
	attr_reader :y_intercept
	alias b y_intercept
  
   	def initialize(x_int, y_int)
   		@x_intercept, @y_intercept = x_int, y_int
	end
	
	def slope
		@y_intercept / @x_intercept
	end
	
	def raw_graph
		Array.new(@@x_axis) {Array.new @@y_axis}
	end

	def graph
		cp, x = raw_graph, 0
		for x_index in cp
			y = 0
			for y_index in x_index
				cp[x][y] = format_graph(x, y)
				y += 1
			end
			x += 1
		end
	end

=begin
The XY table
@note There are no floats
@return [Hash]
=end
  	def xy
  		x, table = 0, Hash.new
  		until x > @@x_axis
  			y = eval_equation(x)
  			table[x] = y unless y.instance_of?(Float)
  			x += 1
  		end
  		return table
  	end
  	
  	def domain # @return [Array<Integer>] the keys of the xy hash
  		xy.keys
  	end
  	
  	def range # @return [Array<Integer>] the values of the xy hash
  		xy.values
  	end
  		
=begin
Displays graph
@return [String] the graph
=end
  	def to_s
  		result = String.new
  		for x_index in graph
  			for y_index in x_index
  				result << y_index
  			end
  			result << ?\n
  		end
  		return result
  	end
  			
  	def function # @return [String] the function used to plot the line
  		"f(x) = #{slope}x + #{@y_intercept}"
  	end
 
  	def eval_equation(x)
  		slope * x + @y_intercept
  	end
 
	private

  	def check_axis_argument(arg)
		if !(num.kind_of?("Integer"))
			raise ArgumentError, "Argument must be a kind of Integer"
		elsif num % 2 != 0
			raise ArgumentError, "Argument must be even"
		end
 	end
 
	alias caa check_axis_argument

	def format_graph(x, y)
		if @@borders && (x == 0 || y == 0)
			"#"
		elsif xy[x] == y
			?\u00B7
		else
			" "
		end
	end	
	
end
