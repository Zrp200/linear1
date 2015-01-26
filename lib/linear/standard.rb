require "linear/function"
module Linear
	class Standard < Function
		attr_reader :a, :b, :c
		private :slope, :y_intercept
		def self.find index
			array = ARGV[index..(index + 2)]
			$equation_index = index + 3
			return new array[0], array[1], array[2]
		end
		def initialize a, b, c
			@a, @b, @c = a.to_f, b.to_f, c.to_f
			super @c / @b / @a, @c / @b
		end
		def multiply int
			new @a * int, @b * int, @c * int
		end
		def multiply! factor
			@a *= factor
			@b *= factor
			@c *= factor
		end
		def add! int
			@a += int
			@b += int
			@c += int
		end
		def add int
			new @a + int, @b + int, @c + int
		end
		def to_s
			"#{idx a}x + #{idx b} = #{c}"
		end
		def to_slope_intercept
			require "linear/slope_intercept"
			SlopeIntercept.new slope, y_intercept
		end
		alias to_si to_slope_intercept
	end
end
				
