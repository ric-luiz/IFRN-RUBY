d = gets.to_i
m = gets.to_i
a = gets.to_i

if d-1 <= 0 and m-1 > 0
	m = m-1
	if m == 2
		puts "28/#{"%02d"%m}/#{a}"
	elsif m%2 == 0
		puts "30/#{"%02d"%m}/#{a}"
	else
		puts "31/#{"%02d"%m}/#{a}"
	end
elsif d-1 <= 0 and m-1 <= 0
        puts "30/12/#{a-1}"
else
	d = d-1
	puts "#{"%02d"%d}/#{"%02d"%m}/#{a}"
end
