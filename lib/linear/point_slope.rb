require "linear/function"
module Linear
	class PointSlope < Function
		attr_reader :x1, :y1
		def initialize point, slope
			@slope, @x1, @y1 = slope, point[0], point[1]
			super @slope, 1, @x1 - @y1
		end
		def to_slope_intercept
			require "linear/slope_intercept"
			SlopeIntercept.new slope, y_intercept
		end
		alias to_si to_slope_intercept
	end
