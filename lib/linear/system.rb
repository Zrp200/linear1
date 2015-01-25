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
    def intersection
      w = Array.new
      for equation in equations; end
  end
end
    
    
      
  
