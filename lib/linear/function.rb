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
		def to_s
			string = "f(x) = "
			string << case @slope
				when 1 then String.new
				when -1 then ?-
			else
				@slope
			end
			string << "x"
			string << " + #{@y_intercept}" unless direct_variation?
			return string
		end
	end
end
			
