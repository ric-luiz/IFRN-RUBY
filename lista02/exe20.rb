t1=gets.chomp
t2=gets.chomp
t3=gets.chomp

p1=gets.to_i
p2=gets.to_i

p3=gets.to_i
p4=gets.to_i

p5=gets.to_i
p6=gets.to_i

pt1=0
vt1=0
emt1=0
dert1=0

pt2=0
vt2=0
emt2=0
dert2=0

pt3=0
vt3=0
emt3=0
dert3=0

if p1>p2
	pt1+=3
	vt1+=1
	dert2+=1
elsif p1==p2
	pt1+=1
	pt2+=1
	emt1+=1
	emt2+=1
else
	pt2+=3
	vt2+=1
	dert1+=1
end


if p3>p4 
        pt1+=3
	vt1+=1
	dert3+=1
elsif p3==p4
        pt1+=1
        pt3+=1
	emt1+=1
        emt3+=1
else
        pt3+=3
	vt3+=1
	dert1+=1
end

if p5>p6
        pt2+=3
	vt2+=1
	dert3+=1
elsif p5==p6
        pt2 += 1
        pt3 += 1
	emt2+=1
        emt3+=1
else
        pt3 += 3
	vt3+=1
	dert2+=1
end

saldot1=(p1+p3)-(p1+p3)
saldot2=(p2+p5)-(p1+p6)
saldot3=(p4+p6)-(p3+p5)

if pt1>pt2 and pt2>pt3
	puts "1:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
	puts "2:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
	puts "3:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
elsif pt1>pt3 and pt3>pt2
	puts "1:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
        puts "2:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
	puts "3:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
elsif pt2>pt1 and pt1>pt3
        puts "1:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
	puts "2:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
        puts "3:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
elsif pt2>pt3 and pt3>pt1
	puts "1:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
        puts "2:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
	puts "3:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
elsif pt3>pt2 and pt2>pt1
        puts "1:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
	puts "2:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
	puts "3:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
elsif pt3>pt1 and pt1>pt2
	puts "1:#{t3}:#{pt3}:#{vt3}:#{emt3}:#{dert3}:#{"%02d"%(p4+p6)}:#{"%02d"%(p3+p5)}:#{saldot3>=0?'+':''}#{saldot3<0?'%03d'%(saldot3):'%02d'%(saldot3)}"
        puts "2:#{t1}:#{pt1}:#{vt1}:#{emt1}:#{dert1}:#{"%02d"%(p1+p3)}:#{"%02d"%(p2+p4)}:#{saldot1>=0?'+':''}#{saldot1<0?'%03d'%(saldot1):'%02d'%(saldot1)}"
	puts "3:#{t2}:#{pt2}:#{vt2}:#{emt2}:#{dert2}:#{"%02d"%(p2+p5)}:#{"%02d"%(p1+p6)}:#{saldot2>=0?'+':''}#{saldot2<0?'%03d'%(saldot2):'%02d'%(saldot2)}"
end
