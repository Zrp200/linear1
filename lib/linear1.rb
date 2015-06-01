require "linear1/system"
require "linear1/standard"
require "linear1/slope_intercept"
require "linear1/point_slope"
require "linear1/function"
require "linear1/graph"
require "linear1/direct_variation"
require "linear1/arithmetic_sequence"
module Linear1
  [System, Standard, SlopeIntercept, PointSlope, Function, DirectVariation, ArithmeticSequence].each do |class|
    define_method class.to_sym { |*args| class.try_convert *args}
    module_function class.to_sym
  end
end
      
