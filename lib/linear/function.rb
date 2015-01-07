module Linear
	class Function
		attr_reader :slope, :y_intercept
		def initialize(slope, y_intercept)
			@slope = slope
			@y_intercept = y_intercept
		end
		def execute(x)
			raise ArgumentError unless x.kind_of? Numeric
			return @slope * x + @y_intercept
		end
	end
end
			
