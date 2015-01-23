require "linear/function"
module Linear
	class SlopeIntercept < Function
		def self.find(index1, array=ARGV)
			i = 0
			until i == 2
				raise ArgumentError, "array#{index1 + i}] must be a number" unless array[index1 + i].to_i == array[index1 + i]
				i += 1
			end
			return new array[index1+0], array[index1+1]
		end
		def to_s
			return super.sub "f(x)", "y"
		end
		def initialize(slope, y_intercept)
			super
		end
		def to_standard
			require "linear/standard"
			Standard.new slope, -1, -y_intercept
		end
		def self.to_s
			"y = mx + b"
		end
	end
end
