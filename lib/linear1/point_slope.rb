require "linear1/function"
autoload :SlopeIntercept, "linear1/slope_intercept"
module Linear1
	class PointSlope < Function
		attr_reader :x1, :y1
		def initialize x, y, slope
			@slope, @x1, @y1 = display_num(slope), display_num(x), display_num(y)
			super @slope, @x1 - @y1
		end
		class << self
			def try_convert(object)
				object.to_point_slope
			rescue NoMethodError
				nil
			end
			def find index
				new ARGV[index], ARGV[index + 1], ARGV[index + 2]
			end
			def build
				print "Enter x coordinate: "
				x = ARGV.gets.chomp
				print "Enter y coordinate: "
				y = ARGV.gets.chomp
				print "Enter slope: "
				slope = ARGV.gets.chomp
				puts ?\n
				new x, y, slope
			rescue
				puts "Please try again\n"
				retry
			end
		end
		def to_slope_intercept
			require "linear1/slope_intercept"
			SlopeIntercept.new slope, y_intercept
		end
		alias to_si to_slope_intercept
		def to_standard
			to_si.to_standard
		end
	end
end
