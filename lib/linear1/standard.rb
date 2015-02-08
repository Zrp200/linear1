require "linear1/function"
autoload :SlopeIntercept, "linear1/slope_intercept"
autoload :PointSlope, "linear1/point_slope"
module Linear1
	class Standard < Function
		
		attr_reader :a, :b, :c
		private :slope, :y_intercept
		
		
		def self.find index
			array, $equation_index = ARGV[index..(index + 2)], $equation_index = index + 3
			new array[0], array[1], array[2]
		end
		
		
		def initialize a, b, c
			@a, @b, @c = display_num(a), display_num(b), display_num(c)
			super @c / @b / @a, @c / @b
		end
		
		
		def multiply(factor)
			new @a * factor, @b * factor, @c * factor
		end
		
		alias mult multiply
		
		def multiply!(factor)
			attrs.each_with_index {	|a, i| a = mult(term).send(:attrs)[i]	}
		end
		
		alias mult! multiply!
		
		
		def add term
			new @a + term, @b + term, @c + term
		end
	
		def add! term
			attrs.each_with_index {	|a, i| a = add(term).send(:attrs)[i]	}
		end
		
	
		def to_s # @return [String] the equation
			"#{idx a}x + #{idx b}y = #{c}"
		end
		
		
		def to_slope_intercept
			SlopeIntercept.new slope, y_intercept
		end
		
		alias to_si to_slope_intercept
		
		
		def to_point_slope
			d = rand(100) / 2
			PointSlope.new @c - d, @c + d, slope
		end
		
		alias to_ps to_point_slope
		
		
		def attrs
			[@a, @b, @c]
		end
		
		private :attrs
	end
end
				
