require "linear1/function"
module Linear1
	class Graph
		def initialize equation
   			@equation = equation
		end
		@@axis = {x: 30, y: 20}
    		def self.axis key
    			@@axis.fetch key
    		end
		ORIGIN = {x: @@axis.fetch(:x) / 2, y: @@axis.fetch(:y) / 2} # The center of the graph
		
		# @return [Array<Array<Integer>>] the array used to create the graph
		# @note Do not use as an XY table; the values are modified and not accurate
  		def to_a
  			final, y = Array.new, 0
  			@@axis.fetch(:y).times do
  				final[y], x = Array.new, 0
  				@@axis.fetch(:x).times do
  					final[y][x] = init_coord(x, y)
  					x += 1
  				end
  				y += 1
			end
			final.reverse
		end

		# @return [Hash<Integer, Integer>] a hash used to build the graph
		# @see #to_a
  		def hash
  			table = Hash.new
  			(0..@@axis.fetch(:y) ).to_a.each do |y|
  				(0..@@axis.fetch(:x) ).to_a.each {|x| table[y] = @equation.execute(x - ORIGIN.fetch(:x) )}
  			end
  			table
  		end
  		def mod_hash
  			table = Hash.new
  			hash.each_pair {|key, value| table[key] = value # if x_exec == y - ORIGIN.fetch(:y) }
  			table
  		end
  		private :mod_hash
		def domain # @return [Array<Integer>] the values of the xy hash
  			hash.values
  		end
  	
  		def range # @return [Array<Integer>] the keys of the xy hash
  			hash.keys
  		end
  		
  		# @return [String] the graph
  		def to_s
  			result = String.new
  			to_a.each do |y_index|
  				y_index.each { |x_index| result << x_index << " "}
  				result << ?\n
  			end
  			result.center 100
  		end
  		private
  		def init_coord x, y
 			(!mod_hash[y].nil? && mod_hash.fetch(y) == x - ORIGIN.fetch(:x) ) ? ?\u2022 : format_grid(x - ORIGIN.fetch(:x), y - ORIGIN.fetch(:y) )
 		end
  		def check_axis_argument(arg)
			if !(num.kind_of?(Integer) ) then raise ArgumentError, "Argument must be a kind of Integer"
			elsif num % 2 != 0 then raise ArgumentError, "Argument must be even" end
 		end
		alias caa check_axis_argument
		def format_grid x, y # @return [String, nil]
			if x.zero? && y.zero? then ?+
			elsif x.zero? && !y.zero? then "|"
			elsif y.zero? && !x.zero? then "-"
			else " " end
		end
				
	end
end
