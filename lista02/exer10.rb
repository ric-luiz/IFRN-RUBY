n1=gets.to_i
n2=gets.to_i
n3=gets.to_i

if n1>n2 and n1>n3 and n2+n3>n1
	puts "maior"
elsif n2>n1 and n2>n3 and n1+n3>n2
        puts "maior"
elsif n3>n2 and n3>n1 and n2+n1>n3
        puts "maior"
end

