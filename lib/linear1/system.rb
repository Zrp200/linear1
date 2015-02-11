module Linear1
  class System
    include Enumerable
    attr_reader :e1, :e2
    def each
      return yield(@e1), yield(@e2)
    end
    def initialize equation1, equation2
      @e1, @e2 = equation1, equation2
    end
    def execute x
      final = Array.new
      @equations.each {|equation| final << equation.execute(x)}
      final
    end
    def intersection
      e = [@e1.to_standard, @e2.to_standard]
      y, x = e[0].b * (e[1].c - e[1].a), e[1].a * (e[0].c - e[0].b)
      [x, y]
    end
    alias solution intersection
  end
end
    
    
      
  
