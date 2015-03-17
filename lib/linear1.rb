require "linear1/system"
require "linear1/standard"
require "linear1/slope_intercept"
require "linear1/point_slope"
require "linear1/function"
require "linear1/graph"
require "linear1/direct_variation"
require "linear1/arithmetic_sequence"

module Linear1  
  EQUATIONS = {
    function: Function,
    slope_intercept: SlopeIntercept,
    arithmetic_sequence: ArithmeticSequence,
    direct_variation: DirectVariation,
    point_slope: PointSlope,
    standard: Standard
  }
end
