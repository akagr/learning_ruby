gets.to_i.times do   
	a=gets.chomp.split
	a=a.map { |i| i.to_i }
	b1=a[3]+a[6]
	b2=a[0]+a[6]
	b3=a[0]+a[3]
	g1=a[4]+a[7]
	g2=a[1]+a[7]
	g3=a[1]+a[4]
	c1=a[5]+a[8]
	c2=a[2]+a[8]
	c3=a[2]+a[5]

	h={ BCG: (b1+c2+g3), BGC: (b1+g2+c3), CBG: (c1+b2+g3), CGB: (c1+g2+b3), GBC: (g1+b2+c3), GCB: (g1+c2+b3) }

	
	h=h.sort { |k,v| k[1]<=> v[1] }

	puts "#{h.first[0]} #{h.first[1]}"
end
