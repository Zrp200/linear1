require "linear1/function"
module Linear1
	class SlopeIntercept < Function
		def self.try_convert obj
			converter = case obj
				when ->(obj) {obj.respond_to? :to_slope_intercept} then :to_slope_intercept
				when ->(obj) {obj.respond_to? :to_si} then :to_si
			else fail TypeError, "Could not convert #{obj} to SlopeIntercept" end
			obj.public_send converter
		end
		def initialize(slope, y_intercept)
			super
		end
		def to_s
			super.sub "f(x)", "y"
		end
		def to_standard
			require "linear1/standard"
			Standard.new slope, -1, -y_intercept
		end
		alias to_sf to_standard
	end
	module_function; def SlopeIntercept(*args) # @see SlopeIntercept.new, SlopeIntercept.try_convert
		case args.length
			when 1 then SlopeIntercept.try_convert(*args)
			when 2 then SlopeIntercept.new(*args)
		else fail ArgumentError, "Expected 1..2 arguments. Got #{args.length}" end
	end
end
