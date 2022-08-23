# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  if a < 0 or b < 0 or c < 0
  	raise TriangleError, "Length of edges must be greater than 0"
  end

  if not (a + b > c) or not (a + c > b) or not (b + c > a)
  	raise TriangleError, "The length of two edges must be greater then the otherone"
  end
  
  if a == b and b == c
  	return :equilateral
  end

  if a == b or b == c or a == c
  	return :isosceles
  end

  return :scalene
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
