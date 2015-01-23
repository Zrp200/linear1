require "linear/slope_intercept"
module Linear
	class DirectVariation < SlopeIntercept
		def initialize k=1
			super k, 0
		end
		alias k slope
		alias constant_of_variation k
		def self.to_s
			"y = kx"
		end
	end
end
