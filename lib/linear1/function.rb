module Linear1
	class Function
		attr_reader :slope, :y_intercept, :power
		# @param i1 [Fixnum] the index to start search
		# @return [Function]
		def self.find i1
			Function.new ARGV[i1], ARGV[i1 + 1], ARGV[i1 + 2]
		end
		def initialize(slope=1, y_intercept=0, power=1)
			@slope, @y_intercept, @power = display_num(slope), display_num(y_intercept), display_num(power)
		end
		# @param x [Integer, Float]
		# @return [Integer, Float]
		def execute x
			raise ArgumentError unless x.kind_of? Numeric
			return slope * x ** power + y_intercept
		end
		alias f execute
		def x_intercept
			f(0)
		end
		alias zero x_intercept
		alias solution x_intercept
		alias root x_intercept
		alias solve root
		def to_s # @return [String] the equation
			"f(x) = #{idx display_num slope}x#{power_string unless power == 1}#{" + #{display_num @y_intercept}" unless direct_variation?}"
		end
		def direct_variation? # @return [Boolean]
			y_intercept.zero? and power == 1
		end
		alias dv? direct_variation?
		# @return [DirectVariation]
		# @raise [TypeError]
		def to_direct_variation
			if direct_variation?
				require "linear1/direct_variation"
				DirectVariation.new slope
			else
				raise TypeError, "Unable to convert to DirectVariation"
			end
		end
		def to_slope_intercept
			raise "power must be 1" unless power == 1
			SlopeIntercept.new slope, y_intercept
		end
		alias to_dv to_direct_variation
		private
		def power_string
			final = String.new
			final += "\u207b" if @power < 0
			final << case @power
				when 0 then "\u2070"
				when 1 then "\u00b9"
				when 2 then "\u00b2"
				when 3 then "\u00b3"
				when 4 then "\u2074"
				when 5 then "\u2075"
				when 6 then "\u2076"
				when 7 then "\u2077"
				when 8 then "\u2078"
				when 9 then "\u2079"
			end
			return final
		end
		def idx(s)
			return case s
				when 1 then String.new
				when -1 then ?-
			else
				s
			end
		end
		def display_num num
			if num.to_r.to_s == num.to_s
				num.to_r
			elsif num.to_i.to_s == num.to_s
				num.to_i
			elsif num.to_f.to_s == num.to_s
				num.to_f
			elsif num.to_c.to_s == num.to_s
				num.to_c
			end
		end
	end
end
			
