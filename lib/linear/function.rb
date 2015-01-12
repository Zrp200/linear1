module Linear
	class Function
		attr_reader :slope, :y_intercept, :power
		def initialize(slope, y_intercept, power=1)
			@slope, @y_intercept, @power = slope, y_intercept, power
		end
		def execute(x)
			raise ArgumentError unless x.kind_of? Numeric
			return slope * x ** power + y_intercept
		end
		def to_s
			string = "f(x) = "
			string << case slope
				when 1 then String.new
				when -1 then ?-
			else
				slope
			end
			string << ?x
			string << " + #{@y_intercept}" unless direct_variation?
			return string
		end
	end
end
			
