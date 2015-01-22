require "linear/function"
module Linear
	class SlopeIntercept < Function
		def self.find index1
			i = 0
			until i == 2
				raise ArgumentError, "ARGV[#{index1 + i}] must be a number" unless ARGV[index1 + i].to_i == ARGV[index1 + i]
				i += 1
			end
			return new ARGV[index1+0], ARGV[index1+1]
		end
		def to_s
			return super.sub "f(x)", "y"
		end
		def to_function
			Function.new slope, y_intercept
		end
		def initialize(slope, y_intercept)
			super
		end
	end
end
