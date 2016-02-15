combustivel = gets.to_i
consumo = gets.to_f
v1 = gets.to_i
v1 = v1/3.6
v2 = gets.to_i
v2 = v2/3.6
d = gets.to_i
d = d*1000

t = d/(v1-v2)
t = t.to_i

d = v1*t

consumo = (d/1000)*consumo

combustivel = combustivel - consumo

if v2>v1 or combustivel<=0
	puts "--:--:--"
else
	h = t/3600
	m = (t%3600)/60
	s = (t%3600)%60
	puts "#{"%02d"%h}:#{"%02d"%m}:#{"%02d"%s}" 
end
