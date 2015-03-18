require "linear1/function"
autoload :SlopeIntercept, "linear1/slope_intercept"
autoload :PointSlope, "linear1/point_slope"
module Linear1
	class Standard < Function
		attr_reader :a, :b, :c
		
		def self.try_convert(object) # @param object [#to_standard, #to_sf] object to be converted
			case object
				when ->(obj) {obj.respond_to? to_standard} then object.to_standard
				when ->(obj) {obj.respond_to? to_sf} then object.to_sf
			else fail TypeError, "Cannot convert #{object} to Standard" end
			
		end
		
		def initialize a, b, c
			@a, @b, @c = display_num(a), display_num(b), display_num(c)
			super @c / @b / @a, @c / @b
		end
		
	
		def to_s # @return [String] the equation
			"#{idx a}x + #{idx b}y = #{c}"
		end
		
		
		def to_slope_intercept
			SlopeIntercept.new slope, y_intercept
		end
		
		alias to_si to_slope_intercept
		
		def to_point_slope
			d = rand(100) / 2
			PointSlope.new @c - d, @c + d, slope
		end
		alias to_ps to_point_slope
	end
	module_function
	def Standard(*args) # @see Standard.try_convert, Standard.new
		case args.length
			when 1 then Standard.new *args 
			when 3 then Standard.try_convert(object)
		else fail ArgumentError, "Expected 1 or 3 arguments. Got #{args.length}" end
	end
end
				
