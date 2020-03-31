class Triangle
  attr_accessor :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def valid?
    if @sideA > 0 && @sideB > 0 && @sideC > 0
      if @sideA + @sideB > @sideC && @sideA + @sideC > @sideB && @sideB + @sideC > @sideA
        true
      else
        false
      end
    else
      false
    end
  end

  def kind
    if @sideA == @sideB && @sideB == @sideA
      :equilateral
    end
  end

  class TriangleError < StandardError
    def message
      puts "not a valid triangle"
    end
  end
end
