def fact(n)
	if n<=1
		return 1
	else
		return n*fact(n-1)
	end
end

gets.to_i.times do
	puts fact(gets.to_i)
end