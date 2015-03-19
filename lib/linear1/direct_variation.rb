require "linear1/slope_intercept"
module Linear1
	class DirectVariation < SlopeIntercept
		def self.try_convert object # @param object [{#to_dv}]
			object.send case object
				when ->(obj) {obj.respond_to? :to_direct_variation} then :to_direct_variation
				when ->(obj) {obj.respond_to? :to_dv} then :to_dv
			else fail TypeError, "Could not convert #{object} to Direct Variation" end
		end
		def initialize k=1
			super display_num(k), 0
		end
		alias k slope
		alias constant_of_variation k
	end
	module_function; def DirectVariation object
		if object.is_kind_of? Numeric then DirectVariation.new
		else DirectVariation.try_convert object end
	end
end
