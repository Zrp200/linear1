require "linear/function"
module Linear
	class SlopeIntercept < Function
		def direct_variation?
			@y_intercept.zero?
		end
		def to_fun
			Function.new @slope, @y_intercept
		end
	end
end
