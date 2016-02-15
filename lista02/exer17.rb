n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
n4 = gets.to_i
n5 = gets.to_i
n6 = gets.to_i

if n1 > n2 and n1 > n3 and n1 > n4 and n1 > n5 and n1 > n6
	maior = n1
elsif n1 < n2 and n1 < n3 and n1 < n4 and n1 < n5 and n1 < n6
	menor = n1
end

if n2 > n1 and n2 > n3 and n2 > n4 and n2 > n5 and n2 > n6
        maior = n2
elsif n2 < n1 and n2 < n3 and n2 < n4 and n2 < n5 and n2 < n6
        menor = n2
end

if n3 > n1 and n3 > n2 and n3 > n4 and n3 > n5 and n3 > n6
	maior = n3
elsif n3 < n1 and n3 < n2 and n3 < n4 and n3 < n5 and n3 < n6
	menor = n3
end

if n4 > n1 and n4 > n2 and n4 > n3 and n4 > n5 and n4 > n6
        maior = n4
elsif n4 < n1 and n4 < n2 and n4 < n3 and n4 < n5 and n4 < n6
        menor = n4
end

if n5 > n1 and n5 > n2 and n5 > n3 and n5 > n4 and n5 > n6
        maior = n5
elsif n5 < n1 and n5 < n2 and n5 < n3 and n5 < n4 and n5 < n6
        menor = n5
end

if n6 > n1 and n6 > n2 and n6 > n3 and n6 > n4 and n6 > n5
        maior = n6
elsif n6 < n1 and n6 < n2 and n6 < n3 and n6 < n4 and n6 < n5
        menor = n6
end

puts "#{maior - menor}"
