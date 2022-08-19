class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 >0 && side2 >0 && side3 >0
      if side1==side2 && side3==side1
        ":equilateral"    
       elsif side1==side2 || side1==side3 || side2==side3
        ":isosceles"
       elsif side1 !=side2 || side2 !=side3
        ":scalene"
       end
    else
      begin
        raise TriangleError
      rescue => error
        error.message
      end
      
    end

   end

   class TriangleError < StandardError
    def message
      "triangle::TriangleError" 
    end   
   end
    
end


iso=Triangle.new(1,0,5)
p iso.kind







