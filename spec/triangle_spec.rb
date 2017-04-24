require 'rspec'
require 'triangle'

describe(Triangle) do
  describe("#triangle?") do
    it("returns false if it is not a triangle") do
      test_triangle = Triangle.new(1, 1000, 1)
      expect(test_triangle.triangle?()).to(eq(false))
    end
  end
end
