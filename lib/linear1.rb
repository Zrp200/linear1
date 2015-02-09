module Linear1
  
  autoload :System, "linear1/system"
  autoload :Standard, "linear1/standard"
  autoload :SlopeIntercept, "linear1/slope_intercept"
  autoload :PointSlope, "linear1/point_slope"
  autoload :Function, "linear1/function"
  autoload :Graph, "linear1/graph"
  autoload :DirectVariation, "linear1/direct_variation"
  autoload :ArithmeticSequence, "linear1/arithmetic_sequence"
  
  EQUATIONS = {
    function: Function,
    slope_intercept: SlopeIntercept,
    arithmetic_sequence: ArithmeticSequence,
    direct_variation: DirectVariation,
    point_slope: PointSlope,
    standard: Standard
  }
end
