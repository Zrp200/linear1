require "linear/function"
module Linear
	class SlopeIntercept < Function
		def direct_variation?
			@y_intercept.zero?
		end
		def to_s
			string = "y = #{@slope}x"
			string << " + #{@y_intercept}" unless direct_variation?
		end
	end
end
