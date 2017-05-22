class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
    if self.valid? == false
      raise TriangleError
    else
        if self.side1 == self.side2 && self.side2 == self.side3
          :equilateral
        elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
          :isosceles
        else
          :scalene
        end
      end
  end

  def valid?
    self.side1>0 &&
    self.side2>0 &&
    self.side3>0 &&
    self.side1+self.side2>self.side3 &&
    self.side1+self.side3>self.side2 &&
    self.side2+self.side3>self.side1
  end
end

class TriangleError<StandardError
  def message
    "illegal"
  end

end
# def get_married(person)
#       self.partner = person
#       if person.class != Person
#         begin
#           raise PartnerError
#         rescue PartnerError => error
#             puts error.message
#         end
#       else
#         person.partner = self
#       end
#   end
#
# end
# class PartnerError < StandardError
#   def message
#     "you must give the get_married method an argument of an instance of the person class!"
#   end
# end
