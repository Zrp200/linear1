module Linear1
  class System
    attr_reader :e1, :e2
    def initialize equation1, equation2
      @e1, @e2 = equation1, equation2
    end
    def execute x
      final = Array.new
      @equations.each {|equation| final << equation.execute(x)}
      return final
    end
  end
end
    
    
      
  
