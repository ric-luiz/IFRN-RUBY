n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i

if n1>n2 and n2>n3
	puts n1
	puts n2
	puts n3
elsif n1>n2 and n2<n3
	puts n1
	puts n3
	puts n2
elsif n2>n1 and n1>n3
	puts n2
	puts n1
	puts n3
elsif n2>n1 and n1<n3
	puts n2
	puts n3
	puts n1
elsif n3>n2 and n2>n1
	puts n3
	puts n2
	puts n1
else
	puts n3
	puts n1
	puts n2
end
