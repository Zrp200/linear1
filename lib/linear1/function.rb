require "complex"
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
			slope * display_num(x) ** power + y_intercept
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
			require 'linear1/slope_intercept'
			raise TypeError, "power must be 1" unless power == 1
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
			final
		end
		def idx(s)
			case s
				when 1 then String.new
				when -1 then ?-
			else s end
		end
		def display_num num
			case num.to_s
				when 	Complex(num).to_s 	then	Complex(num)
				when 	Rational(num).to_s 	then 	Rational(num)
				when 	num.to_i.to_s	 	then 	num.to_i
				when	num.to_f.to_s	 	then 	num.to_f
			end
		end
	end
end
			
