require "linear1/function"
module Linear1
	class Graph
		def initialize equation
   			@equation = equation
		end
		@@axis = {x: 75, y: 25}
    
    		def self.axis(key)
    			@@axis[key]
    		end
		
		ORIGIN = {x: @@axis[:x] / 2, y: @@axis[:y] / 2} # The center of the graph
	
  		def to_a
  			final = Array.new
  			y = 0
  			@@axis[:y].times do
  				final[y] = Array.new
  				x = 0
  				@@axis[:x].times do
  					final[y][x] = (!to_hash[y].nil? && to_hash[y] == x - ORIGIN[:x] ) ? ?\u2022 : format_grid(x - ORIGIN[:x], y - ORIGIN[:y])
  					x += 1
  				end
  				y += 1
			end
			return final.reverse
		end

	
  		def to_hash
  			table = Hash.new
  			for y in (0..@@axis[:y]).to_a
  				for x in (0..@@axis[:x]).to_a
  					x_exec, y_exec = @equation.execute(x - ORIGIN[:x]), y - ORIGIN[:y]
  					table[y] = x_exec if x_exec == y_exec
  				end
  			end
  			return table
  		end
  		alias to_h to_hash
  		alias xy to_hash
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
  			return result.center(100)
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
			if x.zero? && y.zero?
				"+"
			elsif x.zero? && !y.zero?
				"|"
			elsif y.zero? && !x.zero?
				"-"
			else
				" "
			end
		end
				
	end
end
