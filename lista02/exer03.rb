n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i

if n1 > n2 and n1 > n3
	puts n1
elsif n2 > n1 and n2 > n3
	puts n2
else
	puts n3
end
