def power( base, exponent )
  (exponent - 1).times do 
    base += base
  end
  return base
end

puts "#{power( 2, 5 )}"