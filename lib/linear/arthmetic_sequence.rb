module Linear
	class ArthmeticSequence < Function
		attr_reader :a, :common_difference
		alias d common_difference
		alias to_a a
		alias slope d
		def initialize(a)
			i = 0
			while i < a.length - 2 
				raise ArgumentError, "Elements must have a common difference" unless a[i+1] - a[i] == a[i+2] - a[i+1]
				i += 1
			end
			@common_difference, @a = a[1] - a[0], a
		end
		def y_intercept
			a.first
		end
		def execute(n)
			a[0] + d * n
		end
		def to_s # Modified to count from zero instead of one
			"a[n] = #{a[0]} + #{idx d}n"
		end
	end
end
