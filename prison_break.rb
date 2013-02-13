gets.to_i.times do
	col=gets.to_i
	cipher=gets.chomp
	a=[]
	i=0
	j=i+col-1
	while j<=cipher.size do
		a<<cipher[i..j]
		i=j+1
		j=i+col-1
	end

	a.each_index { |i| a[i].reverse! unless i%2==0}

	cipher=a.join
	i=0
	plain=[]
	while i<col
		j=i
		while j<=cipher.size do
			plain<<cipher[j]
			j+=col
		end
		i+=1
	end
	puts plain.join
end