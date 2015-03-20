require "linear1/function"
autoload :SlopeIntercept, "linear1/slope_intercept"
module Linear1
	class PointSlope < Function
		attr_reader :x1, :y1
		def initialize x, y, slope
			@slope, @x1, @y1 = display_num(slope), display_num(x), display_num(y)
			super @slope, @x1 - @y1
		end
		class << self
			def try_convert object
				for sym in %i(to_point_slope to_ps)
					return sym if object.respond_to? sym
				end
				raise TypeError, "Unable to convert #{object} to PointSlope"
			end
		end
		def to_slope_intercept
			require "linear1/slope_intercept"
			SlopeIntercept slope, y_intercept
		end
		alias to_si to_slope_intercept
		def to_standard
			to_si.to_standard
		end
	end
	def PointSlope(*object)
		case object.length
			when 1 then PointSlope.try_convert(*object)
			when 3 then PointSlope.new(*object)
		else raise ArgumentError, "Expected 1 or 3 arguments. Got #{object.length}" end
	end
end
