module Linear
  class System
    def initialize *equations
      @equations = equations
    end
    def execute x
      final = Array.new
      @equations.each {|equation| final << equation.execute(x)}
      return final
    end
    def [](index)
      return @equations[index]
    end
  end
end
    
    
      
  
