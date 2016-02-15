n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
n4 = gets.to_i

if n1==n2 and n3==n4 or n1==n4 and n2==n3
	puts 'Quadrado'
else
	puts "Retangulo"
end
