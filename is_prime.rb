def is_prime?( number )
	(2..Math.sqrt(number).floor).each do |i| # checking all numbers up to floor of number's sqrt
		if number % i == 0 && i < number
			return false
		end
	end
    return true
end

puts "#{is_prime?(7)}"