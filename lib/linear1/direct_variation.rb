require "linear1/slope_intercept"
module Linear1
	class DirectVariation < SlopeIntercept
		# @param index1 [Fixnum] the index of the first argument
		# @return [DirectVariation]
		def self.find index1
			new ARGV[index1]
		end
		def initialize k=1
			super display_num(k), 0
		end
		alias k slope
		alias constant_of_variation k
	end
end
