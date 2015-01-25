require "greatest_common_factor"
module Linear
  class System
    include BrainDoll::GreatestCommonFactor
    def [](index)
      @equations[index]
    end
    def <<(equation)
      raise ArgumentError unless equation.kind_of? Function
      @equations << equation
    end
    alias push <<
    def each(&block)
      @system.each {yield}
    end
    def initialize *equations
      @equations = equations
    end
    def execute x
      final = Array.new
      @equations.each {|equation| final << equation.execute(x)}
      return final
    end
    def intersection # @todo
      require "linear/standard"
      standard = Array.new
      for equation in @equations
        standard << equation.to_standard
      end
      standard.gcf
    end
    private
    def greatest_attr(array, attribute)
      attr_array = Array.new
      array.each {|eq| attr_array << eq.public_send(attribute)}
      return attr_array.sort.last
    end
      
      
        
        
  end
end
    
    
      
  
