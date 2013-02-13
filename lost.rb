gets.to_i.times do
	size=gets
	x=[]
	a=gets.chomp.split
	while a.size>0 do
		x<<a.delete_at(a.index(a.max))
	end
	puts x.join.to_i
end