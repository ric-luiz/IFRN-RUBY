l1=gets.to_i
l2=gets.to_i
l3=gets.to_i
if l1>l2+l3 or l2>l1+l3 or l3>l2+l1
	puts "Nenhum"
elsif l1==l2 and l2==l3
	puts "Equilatero"
elsif l1==l2 or l2==l3  or l1==l3
	puts "Isosceles"
else
	puts "Escaleno"	
end
