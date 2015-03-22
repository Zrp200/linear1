require "linear1/function"
module Linear1
	class SlopeIntercept < Function
		def self.try_convert obj
			for converter in %i[to_slope_intercept to_si]
				return obj.public_send converter if obj.respond_to? converter
			end
			fail TypeError, "Could not convert #{obj} to SlopeIntercept"
		end
		def initialize(slope, y_intercept)
			super
		end
		def to_s
			super.sub "f(x)", "y"
		end
		def to_ps
			require "linear1/point_slope"
			PointSlope(0, @y_intercept, @slope)
		end
		alias to_point_slope to_ps
		def to_sf
			require "linear1/standard"
			Standard.new(@slope, -1, -@y_intercept)
		end
	end
	module_function; def SlopeIntercept(*args) # @see SlopeIntercept.new, SlopeIntercept.try_convert
		case args.length
			when 1 then SlopeIntercept.try_convert *args
			when 2 then SlopeIntercept.new *args
		else fail ArgumentError, "Expected 1..2 arguments. Got #{args.length}" end
	end
end
