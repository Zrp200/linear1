require "linear/function"
module Linear
	class Standard < Function
		def initialize(a, b, c)
			super((c/b)/(c/a), c/b)
		end
	end
end
				
