require "linear1/function"
autoload :SlopeIntercept, "linear1/slope_intercept"
autoload :PointSlope, "linear1/point_slope"
module Linear1
	class Standard < Function # Standard form consisting of the formula `Ax + By = C`
		attr_reader :a, :b, :c
		def self.try_convert(object) # @param object [#to_standard, #to_sf] object to be converted
			case object
				when ->(obj) {obj.respond_to? to_standard} then object.to_standard
				when ->(obj) {obj.respond_to? to_sf} then object.to_sf
			else fail TypeError, "Cannot convert #{object} to Standard" end
			
		end
		def initialize a, b, c
			@a, @b, @c = display_num(a), display_num(b), display_num(c)
			super @c / @b / @a, @c / @b
		end
		def to_s # @return [String] the equation
			"#{idx @a}x + #{idx @b}y = #@c"
		end 
		
		# Implicit
		# @return [SlopeIntercept]
		def to_slope_intercept
			SlopeIntercept.new slope, y_intercept
		end
		
		# Explicit
		# @return [SlopeIntercept]
		# @see (to_slope_intercept)
		alias to_si to_slope_intercept
		
		# Implicit
		# @return [PointSlope]
		def to_point_slope
			d = rand(100) / 2
			PointSlope.new @c - d, @c + d, slope
		end
		
		# Explicit
		# @return [PointSlope]
		alias to_ps to_point_slope
	end
end
				
