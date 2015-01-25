require "forwardable"
module Linear
  class System
    extend Forwardable
    def_delegators @equations, :[], :each, :push
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
    end
    private
    def gcf(standard_array, attribute) # @param standard_array [Array<Standard>]
      for equation in standard_array
        raise ArgumentError, "Equations must be kinds of Standard" unless equation.kind_of? Standard
      end
    end
    def greatest_attr(array, attribute)
      attr_array = Array.new
      array.each {|eq| attr_array << eq.public_send(attribute)}
      return attr_array.sort.last
    end
      
      
        
        
  end
end
    
    
      
  
