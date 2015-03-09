def overlap( rect_one, rect_two )
  x_min = [rect_one[0][0], rect_two[0][0]].max
  x_max = [rect_one[1][0], rect_two[1][0]].min
  y_min = [rect_one[0][1], rect_two[0][1]].max
  y_max = [rect_one[1][1], rect_two[1][1]].min

  if ( ( x_max <= x_min ) || ( y_max <= y_min ) )
  	return false
  end
  return true
end

puts "#{overlap( [ [0,0], [3,3] ], [ [1,1], [4,5] ] )}"