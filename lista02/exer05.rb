n1 = gets.to_f
n2 = gets.to_f

if (n1 >= 0 and n1 <= 10) and (n2 >= 0 and n2 <= 10)
	media = (n1*2 + n2*3)/(5)	

	if media >= 6.0
		#media = "%.1f"%media
		puts "#{"%.1f"%media}:APROVADO"
	elsif media < 2
		puts "#{"%.1f"%media}:REPROVADO"
	else
		puts "#{"%.1f"%media}:RECUPERACAO"
	end

else
	puts "INVALIDA"
end
