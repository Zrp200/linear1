require "linear/slope_intercept"
module Linear
	class Standard < SlopeIntercept
		def initialize(a, b, c)
			super((c/b)/(c/a), c/b)
		end
	end
end
				
