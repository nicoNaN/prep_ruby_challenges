def combinations( array_one, array_two )
	array_one.product(array_two).collect { |x, y| x + y }
end

puts "#{combinations( ['on', 'in'], ['to', 'rope'])}"