gets.to_i.times do
	cost=0
	h= Hash.new(0)
	a=gets.chomp.split(//)
	a.each do |x|
		if h[x]==0
			h[x] += 1
			cost += 1
		else
			if h[x].odd?
				h[x] += 1
			else
				h[x]+= 1
				cost+=1
			end
		end
	end
	puts cost
end
