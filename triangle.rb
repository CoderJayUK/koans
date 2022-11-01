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
  if a.zero? || b.zero? || c.zero?
    raise TriangleError.new "Traingle's sides must be greater than 0"
  end

  if a.negative? || b.negative? || c.negative?
    raise TriangleError.new "A triangle cannot have negative values"
  end

  if a + b <= c || b + c <= a || c + a <= b
    raise TriangleError.new "Any 2 sides of a triangle must be greater than the 3rd"
  end

  if a == b && b == c
    :equilateral
  elsif a == b || b == c || c == a
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
