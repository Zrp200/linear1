module Linear
	class Graph

		@@borders, @@x_axis, @@y_axis = true, 120, 60
    
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
			raise ArgumentError, "Argument must be true or false" unless bool == true || bool == false
			@@borders = bool
		end
  
   		def initialize *system
   			for equation in system
   				raise ArgumentError unless equation.kind_of? Function
   			end unless system.kind_of? Function
   			@system = system
		end
	
		def x_intercept # @return [Integer] the x intercept of the graph
			return @system.execute 0 if @system.kind_of? Function
			x_ints = Array.new
			for equation in @system
				x_ints << equation.execute(0)
			end
			return x_ints
		end
				
		end
		alias x_int x_intercept
		alias zero x_intercept
		alias solution x_intercept
	
=begin
The XY table
@return [Hash]
=end
  		def to_hash
  			table = Hash.new
  			for y in Graph.y_axis
  				for x in Graph.x_axis
  					@system.each {|equation| table[y] = x if equation.execute(x - @@x_axis / 2) == y - @@y_axis / 2}
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
  		
=begin
Displays graph
@return [String] the graph
=end
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
