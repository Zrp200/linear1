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
			string << sup(power) unless power == 1
			string << " + #{@y_intercept}" unless y_intercept.zero?
			return string
		end
		private
		def sup(pow)
			final = String.new
			final << ?\u207b if pow < 0
			for digit in pow.to_s
				final << case digit
					when ?0 then ?\u2070
					when ?1 then ?\u00b9
					when ?2 then ?\u00b2
					when ?3 then ?\u00b3
					when ?4 then ?\u2074
					when ?5 then ?\u2075
					when ?6 then ?\u2076
					when ?7 then ?\u2077
					when ?8 then ?\u2078
					when ?9 then ?\u2079
				end
			end
		end
	end
end
			
