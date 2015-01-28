require "linear1/function"
module Linear1
	class PointSlope < Function
		attr_reader :x1, :y1
		private :y_intercept
		def initialize slope, x, y
			@slope, @x1, @y1 = slope.to_f, x.to_f, y.to_f
			super @slope, @x1 - @y1
		end
		def self.find index
			new ARGV[index], ARGV[index + 1], ARGV[index + 2]
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
