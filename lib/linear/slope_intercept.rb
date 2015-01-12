require "linear/function"
module Linear
	class SlopeIntercept < Function
		def to_s
			return super.sub "f(x)", "y"
		end
		def to_function
			Function.new @slope, @y_intercept
		end
		def direct_variation?
			@y_intercept.zero?
		end
	end
end
