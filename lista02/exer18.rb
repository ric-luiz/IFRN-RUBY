nota1 = gets.to_f
trabalho1 = gets.to_f
p11 = gets.to_i
p12 = gets.to_i
b1 = (nota1*p11 + trabalho1*p12)/(p11 + p12)

nota2 = gets.to_f
trabalho2 = gets.to_f
p21 = gets.to_i
p22 = gets.to_i
b2 = (nota2*p21 + trabalho2*p22)/(p21 + p22)

md = (b1*2 + b2*3)/5.0

if md >= 6
	puts "#{"%.1f"%b1}:#{"%.1f"%b2}:-:#{"%.1f"%md}:APROVADO"
elsif md >= 2 and md < 6
	rec = gets.to_i
	mdf = (md+rec)/2
	if mdf >= 6
		puts "#{"%.1f"%b1}:#{"%.1f"%b2}:#{"%.1f"%rec}:#{"%.1f"%md}:APROVADO"
	else
		puts "#{"%.1f"%b1}:#{"%.1f"%b2}:#{"%.1f"%rec}:#{"%.1f"%md}:REPROVADO"
	end
end
