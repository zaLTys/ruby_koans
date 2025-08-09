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

 if [a, b, c].all? { |side| side == 0 }
  raise TriangleError, "0 sides"
end

if [a, b, c].any? { |side| side < 0 }
  raise TriangleError, "negative side"
end


arr = [a, b, c]
if arr.any? { |side| side >= (arr.sum - side) }
  raise TriangleError, "not a triangle"
end

  if a == b  && b == c
    :equilateral
  elsif a != b && b != c && a != c
    :scalene
  else  
   :isosceles   
  end
end

#def triangle(a, b, c)
#  [a, b, c].uniq.length == 1 ? :equilateral : [a, b, c].uniq.length == 2 ? :isosceles : :scalene
#end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
