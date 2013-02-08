gets.to_i.times do
	i=0
	a=gets.chomp
	a.scan(/[ADOPQR]/) { i+=1 }
	a.scan(/B/) { i+=2 }
	puts i
end