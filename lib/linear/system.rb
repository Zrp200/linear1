module Linear
  class System
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
  end
end
    
    
      
  
