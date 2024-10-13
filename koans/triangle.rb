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
  x,y,z=[a,b,c].sort
  raise TriangleError.new("Side length cannot be zero or negative") if x<=0
  raise TriangleError.new("Sum of two sides should be greater than the third size") if x+y<=z

  if a == b && a == c
    return :equilateral
  end
  if a == b || a == c || b == c
    return :isosceles
  else
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
