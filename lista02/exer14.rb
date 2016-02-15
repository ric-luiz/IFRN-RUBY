d=gets.to_i
m=gets.to_i
a=gets.to_i

if m==2
	if d>0 and d<=28 and a>=0
		puts "Valida"
	else
		puts "Invalida"
	end
elsif m%2==0
	if d>0 and d<=31 and m>0 and m<=12 and a>=0
		puts "Valida"
	else
		puts "Invalida"
	end
else
	if d>0 and d<=30 and m>0 and m<=12 and a>=0
		puts "Valida"
	else
		puts "Invalida"
	end
end
