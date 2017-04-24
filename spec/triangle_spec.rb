require 'rspec'
require 'triangle'

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(1, 1000, 1)
      expect(test_triangle.triangle?()).to(eq(false))
    end

    it("returns true if it is a triangle") do
      test_triangle = Triangle.new(1, 1, 1)
      expect(test_triangle.triangle?()).to(eq(true))
    end
  end

  describe("#equilateral?") do
    it("returns true if triangle is an equilateral") do
      test_triangle = Triangle.new(2, 2, 2)
      expect(test_triangle.equilateral?()).to(eq(true))
    end

    it("returns false if triangle is not an equilateral") do
      test_triangle = Triangle.new(2, 2, 4)
      expect(test_triangle.equilateral?()).to(eq(false))
    end
  end
end



# validation:
# cannot have 0 as a value
# the sum of the lengths of any two sides of a triangle is less than
#or equal to the length of the third side.
#
# Equilateral: All sides are equal.
# Isosceles: Exactly 2 sides are equal.
# Scalene: No sides are equal.
