require "linear/function"
module Linear
	class SlopeIntercept < Function
		def self.find array, index1
			i = 0
			until i == 2
				raise ArgumentError, "array[#{index1 + i}] must be a number" unless array[index1 + i].to_i == array[index1 + i]
				i += 1
			end
			return new array[index1+0], array[index1+1]
		end
		def to_s
			return super.sub "f(x)", "y"
		end
		def to_function
			Function.new slope, y_intercept
		end
		def initialize(slope, y_intercept)
			super slope, 1, y_intercept
		end
	end
end
