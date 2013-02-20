#wrong answer

gets.to_i.times do
	n, a, b = gets.chomp.split.map { |e| e.to_i }
	a, b = a.to_s(2), b.to_s(2)
	a,b = ("0"*(n-a.size)+a), ("0"*(n-b.size)+b)
	a1=a.count("1")
	a0=a.count("0")
	b1=b.count("1")
	b0=b.count("0")
	if a1>b1 then
		bf = ("0"*b0) + "1"*b1
		if a1 <= b0
			af = ("1"*a1) + "0"*a0
		else
			af = ("1"*b0) + ("0"*a0) + "1"*(a1-b0)
		end
	else
		af = ("0"*a0) + "1"*a1
		if b1 <= a0
			bf = ("1"*b1) + "0"*b0
		else
			bf = ("1"*a0) + ("0"*b0) + "1"*(b1-a0)
		end
	end
	puts af.to_i(2)^bf.to_i(2)
end