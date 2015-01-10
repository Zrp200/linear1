require "linear/function"
module Linear
	class SlopeIntercept < Function
		def to_s
			return super.sub "f(x)", "y"
		end
		def to_fun
			Function.new @slope, @y_intercept
		end
	end
end
