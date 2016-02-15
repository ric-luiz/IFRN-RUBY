d=gets.to_i
m=gets.to_i
a=gets.to_i
pd=gets.to_i
nd=(d+pd)%30
nm=m+(d+pd)/30
na=a+nm/12
if pd>0
	if nm>12
		nm=nm/12
	end
	puts "#{nd}/#{nm}/#{na}"
end
