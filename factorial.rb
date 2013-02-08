gets.to_i.times do
	count=0
	x=5
	i=2
	a = gets.to_i
	while x <= a do
		count+= a / x
		x = 5**i
		i+=1
	end
	puts count
end

