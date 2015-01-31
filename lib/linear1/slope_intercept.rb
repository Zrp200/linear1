require "linear1/function"
module Linear1
	class SlopeIntercept < Function
		def self.find(index1, array=ARGV)
			new display_num(array[index1+0]), display_num(array[index1+1])
		end
		def to_s
			super.sub "f(x)", "y"
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
