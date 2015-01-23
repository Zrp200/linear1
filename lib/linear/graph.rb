require "linear/function"
require "linear/system"
module Linear
	class Graph
		def initialize equation
			raise ArgumentError unless (equation.kind_of?(Function) || equation.instance_of?(System))
   			@equation = equation
		end

		@@borders, @@x_axis, @@y_axis = true, 50, 25
    
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
  		def to_a
  			final = Array.new
  			y = 0
  			@@y_axis.times do
  				final[y] = Array.new
  				x = 0
  				@@x_axis.times do
  					final[y][x] = format_pair(x, y)
  					x += 1
  				end
  				y += 1
			end
			return final.reverse
		end

		def self.borders=(bool)
			raise ArgumentError, "Argument must be true or false" unless bool == true | false
			@@borders = bool
		end
	
		def x_intercept # @return [Integer] the x intercept of the graph
			x_ints = (@equation.instance_of? System) ? Array.new : @equation.execute(0)
			for equation in @equation
				x_ints << equation.execute(0)
			end if @equation.instance_of? System
			return x_ints
		end
		alias x_int x_intercept
		alias zero x_intercept
		alias solution x_intercept
  		def to_hash
  			table = Hash.new
  			for y in Graph.y_axis
  				for x in Graph.x_axis
  					x_exec = equation.execute x - @@x_axis / 2
  					y_exec = y - @@y_axis / 2
  					if x_exec.class == Array
  						table[y] = x if x_exec.include? y_exec
  					else
  						table[y] = x if x_exec == y_exec
  					end
  				end
  			end
  			return table
  		end
  		alias to_h to_hash
		def domain # @return [Array<Integer>] the values of the xy hash
  			xy.values
  		end
  	
  		def range # @return [Array<Integer>] the keys of the xy hash
  			xy.keys
  		end
  		
  		# @return [String] the graph
  		def to_s
  			result = String.new
  			for y_index in to_a
  				for x_index in y_index
  					result << x_index
  				end
  				result << ?\n
  			end
  			return result.center 80
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
		
		# @return [String, nil]
		def format_grid x, y
			if x.zero? && y.zero? # Origin?
				"+"
			elsif x.zero? && !y.zero?
				"|"
			elsif y.zero? && !x.zero?
				"-"
			end
		end
				
		
		def format_pair x, y
			if @@borders && (x.zero? && y.zero? || (x == @@x_axis - 1 && y == @@y_axis - 1 || y.zero?))
				"#"
			elsif @@borders && (x.zero? || y.zero? || y == @@y_axis - 1 || x == @@x_axis - 1 )
				(x % 2 == 0) ? "#" : " "
			elsif to_hash[y] == x
				return ?\u00B7
			else
				return " "
			end
		end	
	end
end
