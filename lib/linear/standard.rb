require "linear/function"
module Linear
	class Standard < Function
		attr_reader :a, :b, :c
		private :slope, :y_intercept
		def initialize a, b, c
			@a, @b, @c = a.to_f, b.to_f, c.to_f
			super @c / @b / @a, @c / @b
		end
		def to_s
			"#{idx a}x + #{idx b} = #{c}"
		end
		def self.to_s
			"ax + by = c"
		end
		def to_slope_intercept
			require "linear/slope_intercept"
			SlopeIntercept.new slope, y_intercept
		end
		alias to_si to_slope_intercept
	end
end
				
