n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i

if n1 < n2 and n1 < n3

	if n2%n1 == 0 and n3%n1 == 0
		puts "DIVISOR"
	end
	
elsif n2 < n1 and n2 < n3

	if n1%n2 == 0 and n3%n2 == 0
		puts "DIVISOR"
	end

else 

	if n1%n3 == 0 and n2%n3 == 0
		puts "DIVISOR"
	end

end
