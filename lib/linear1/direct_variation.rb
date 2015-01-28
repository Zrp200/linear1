require "linear1/slope_intercept"
module Linear1
	class DirectVariation < SlopeIntercept
		# @param index1 [Fixnum] the index of the first argument
		# @param array [Array<String>] the array to be analyzed
		# @todo
		def self.find(index1, array=ARGV); end
		def initialize k=1
			super k, 0
		end
		alias k slope
		alias constant_of_variation k
	end
end
