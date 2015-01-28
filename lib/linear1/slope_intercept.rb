require "linear1/function"
module Linear1
	class SlopeIntercept < Function
		def self.find(index1, array=ARGV)
			i = 0
			until i == 2
				raise ArgumentError, "array[#{index1 + i}] must be a number" unless (array[index1 + i].to_i.to_s == array[index1 + i] || array[index1 + i].to_f.to_s == array[index1 + i])
				i += 1
			end
			return new array[index1+0].to_f, array[index1+1].to_f
		end
		def to_s
			return super.sub "f(x)", "y"
		end
		def initialize(slope, y_intercept)
			super
		end
		def to_standard
			require "linear1/standard"
			Standard.new slope, -1, -y_intercept
		end
	end
end
