require "linear1/function"
module Linear1
	class PointSlope < Function
		attr_reader :x1, :y1
		private :y_intercept
		def initialize x, y, slope
			@slope, @x1, @y1 = slope, x, y
			super @slope, @x1 - @y1
		end
		def to_slope_intercept
			require "linear1/slope_intercept"
			SlopeIntercept.new slope, y_intercept
		end
		alias to_si to_slope_intercept
		def to_standard
			to_si.to_standard
		end
	end
end
