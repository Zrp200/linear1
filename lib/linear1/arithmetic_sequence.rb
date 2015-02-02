require "linear1/function"
module Linear1
	class ArithmeticSequence < Function
		attr_reader :a, :common_difference
		alias d common_difference
		private :slope, :y_intercept
		alias to_a a
		alias slope d
		def initialize *a
			i = 0
			while i < a.length - 2 
				raise ArgumentError, "Elements must have a common difference" unless a[i+1] - a[i] == a[i+2] - a[i+1]
				i += 1
			end
			@common_difference, @a = display_num(a[1]) - display_num(a[0]), a
			super @common_difference, @a[0]
		end
		def to_s # Modified to count from zero instead of one
			"a[n] = #{a[0]} + #{idx d}n"
		end
	end
end
