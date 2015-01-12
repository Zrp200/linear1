require "linear/function"
module Linear
	class SlopeIntercept < Function
		def to_s
			return super.sub "f(x)", "y"
		end
		def to_function
			Function.new slope, y_intercept
		end
		def direct_variation?
			y_intercept.zero?
		end
		alias dv? direct_variation?
		def to_direct_variation
			require "linear/direct_variation"
			DirectVariation.new slope if direct_variation?
		end
		alias to_dv to_direct_variation
		def initialize(slope, y_intercept=0)
			super
		end
	end
end
