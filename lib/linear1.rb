module Linear1
    library = %i[System Graph Function Standard SlopeIntercept DirectVariation PointSlope]
    paths = Array.new
    for constant in library
        path = constant.to_s
        until path =~ /[[:upper:]]/).nil?
            index = path =~ /[[:upper:]]/
            path[index].downcase!
            path = (path.insert(index, "_") unless index.zero?
        end
        autoload constant, "linear1/#{path}"
    end
end
                
        
        
        
=begin       
    for class in classes
        autoload class, "linear1/#{class.to_s"
    autoload    :System,            "linear_algebra/system"
    autoload	:Graph,				"linear_algebra/graph"
    autoload 	:Function,			"linear_algebra/function"
    autoload 	:Standard,			"linear_algebra/standard"
    autoload    :SlopeIntercept,	"linear_algebra/slope_intercept"
    autoload    :DirectVariation,   "linear_algebra/direct_variation"
    autoload    :PointSlope,        "linear_algebra/point_slope"
end
=end
