require "linear/slope_intercept"
module Linear
	class DirectVariation < SlopeIntercept
		def initialize(k)
			@slope, @y_intercept = k, 0
		end
		alias k slope
		alias constant_of_variation k
	end
end