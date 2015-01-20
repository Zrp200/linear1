require "linear/slope_intercept"
module Linear
	class Standard < Function
		attr_reader :a, :b, :c
		def initialize(a, b, c)
			super c / b / a, 1, c / b
			@a, @b, @c = a.to_f, b.to_f, c.to_f
		def to_s
			"#{idx a}x + #{idx b} = #{c}"
		end
	end
end
				
