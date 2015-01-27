require "linear/function"
module Linear
	class Graph
		def initialize equation
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
		def self.x_center(x)
			x + @@x_axis / 2
		end
		def self.y_center(y)
			x + @@y_axis / 2
		end
		
  
    		def self.has_borders?
    			@@borders
		end

		Origin = @@x_axis / 2, @@y_axis / 2 # The center of the graph

  		def to_a
  			final = Array.new
  			y = 0
  			@@y_axis.times do
  				final[y] = Array.new
  				x = 0
  				@@x_axis.times do
  					final[y][x] = (to_hash[y] - Origin[0]) ? to_hash[y] : format_grid(x + Origin[0], y + Origin[1])
  					x += 1
  				end
  				y += 1
			end
			return final.reverse
		end

	
  		def to_hash
  			table = Hash.new
  			for y in Graph.y_axis
  				for x in Graph.x_axis
  					x_exec = @equation.execute x - @@x_axis / 2
  					y_exec = y - @@y_axis / 2
  					table[y] = x_exec if x_exec == y_exec
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
			else
				" "
			end
		end
				
		
		def format_pair x, y
			
		end	
	end
end
