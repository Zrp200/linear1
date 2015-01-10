require "linear/function"
module Linear
	class SlopeIntercept < Function
		def direct_variation?
			@y_intercept.zero?
		end
		def to_s
			string = "y = "
			string << case @slope
				when -1 then "-"
				when 1 then String.new
			else
				"#{@slope}"
			end
			string << "x"
			string << " + #{@y_intercept}" unless direct_variation?
		end
		def to_fun
			Function.new @slope, @y_intercept
		end
	end
end
