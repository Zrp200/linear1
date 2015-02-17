require "linear1/function"
module Linear1
	class Graph
		def initialize equation
   			@equation = equation
		end
		@@axis = {x: 30, y: 20}
    
    		def self.axis key
    			@@axis[key]
    		end
		
		ORIGIN = {x: @@axis[:x] / 2, y: @@axis[:y] / 2} # The center of the graph
		
		# @return [Array<Array<Integer>>] the array used to create the graph
		# @note Do not use as an XY table; the values are modified and not accurate
  		def to_a
  			final, y = Array.new, 0
  			@@axis[:y].times do
  				final[y], x = Array.new, 0
  				
  				@@axis[:x].times do
  					final[y][x] = init_coord(x, y)
  					x += 1
  				end
  				y += 1
			end
			final.reverse
		end

		# @return [Hash<Integer, Integer>] a hash used to build the graph
		# @note Do not use as an xy table; values are modified
		# @see #to_a
  		def hash
  			table = Hash.new
  			(0..@@axis[:y]).to_a.each do |y|
  				(0..@@axis[:x]).to_a.each do |x|
  					x_exec = @equation.execute(x - ORIGIN[:x])
  					
  					table[y] = x_exec if x_exec == y - ORIGIN[:y]
  				end
  			end
  			table
  		end
		def domain # @return [Array<Integer>] the values of the xy hash
  			hash.values
  		end
  	
  		def range # @return [Array<Integer>] the keys of the xy hash
  			hash.keys
  		end
  		
  		# @return [String] the graph
  		def to_s
  			result = String.new
  			
  			for y_index in to_a
  				for x_index in y_index
  					result << x_index
  					
  					result << " "
  				end
  				
  				result << ?\n
  			end
  			
  			result.center 100
  		end
  	
  		private
  		
  		def init_coord x, y
 			(!hash[y].nil? && hash[y] == x - ORIGIN[:x]) ? ?\u2022 : format_grid(x - ORIGIN[:x], y - ORIGIN[:y])
 		end
  	
  		def check_axis_argument(arg)
			if !(num.kind_of?(Integer) ) then raise ArgumentError, "Argument must be a kind of Integer"
				
			elsif num % 2 != 0 then raise ArgumentError, "Argument must be even"
			
			end
 		end
 
		alias caa check_axis_argument
		
		# @return [String, nil]
		def format_grid x, y
			if x.zero? && y.zero? then "+"
				
			elsif x.zero? && !y.zero? then "|"
			
			elsif y.zero? && !x.zero? then "-"
			
			else " "
			
			end
		end
				
	end
end
