require "linear/function"
module Linear
	class SlopeIntercept < Function
		def direct_variation?
			@y_intercept.zero?
		end
	end
end
