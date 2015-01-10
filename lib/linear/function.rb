module Linear
	class Function # Is basicly slope-intercept 
		attr_reader :slope, :y_intercept
		def initialize(slope, y_intercept)
			@slope = slope
			@y_intercept = y_intercept
		end
		def execute(x)
			raise ArgumentError unless x.kind_of? Numeric
			return @slope * x + @y_intercept
		end
		def direct_variation?
			@y_intercept.zero?
		end
		def to_s
			"f(x) = #{m}x" + b
		end
		private # Helper methods for to_s
			def m
				return case @slope
					when 1 then String.new
					when -1 then "-"
				else
					@slope
				end
			end
			def b
				" + #{@y_intercept}" unless direct_variation?
			end
	end
end
			
