class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    sum1 = self.a + self.b 
    sum2 = self.a + self.c
    sum3 = self.b +  self.c
    if (sum1 <= self.c || sum2 <= self.b || sum3 <= self.a || a <= 0 || b <= 0 || c <= 0 )
    
    raise TriangleError
  elsif (self.a == self.b && self.b == self.c)
    :equilateral
  elsif (self.a == self.b || self.a == self.c || self.b == self.c)
    :isosceles
  else 
    :scalene
  end
  end
    class TriangleError < StandardError
      def message 
        "invalid triangle"
      end
    end
end
