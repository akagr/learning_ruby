gets.to_i.times do
	a=gets.to_i
	i=1
	sum=0
	while i<=(a/2)
		if a%i==0
			sum+=i
		end
		i+=1;
	end
	puts sum
end