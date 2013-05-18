#correct answer

gets.to_i.times do
	n, c, q = gets.chomp.split.map(&:to_i)
	q.times do
		l, r = gets.chomp.split.map(&:to_i)
		if c>=l and c<=r
			c = r-(c-l)
		end 
	end
	puts c
end