class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3,:sideArr
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sideArr=[@side1,@side2,@side3]
  end

  def kind
    measurement=[side1, side2, side3]
  zeroCheck=sideArr.find{|num| num<=0} ? true : false
  sides=measurement.uniq.size
  allzero=measurement.all? ==0 ? true : false
  p negCheck=measurement.find{|num| num<0 } ? true : false
  
  case
  when sides==1 && !zeroCheck  then :equilateral
    
  when sides==2 && !zeroCheck  then :isosceles
  when sides==3 && !zeroCheck  then :scalene    
  else
    begin
      !zeroCheck
      !negCheck
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


iso=Triangle.new(1,1,2)
p iso.kind







