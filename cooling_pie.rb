#incorrect

gets.to_i.times do
	count = 0
	num = gets.to_i
	pie = gets.chomp.split.map { |e| e.to_i }.sort
	rack = gets.chomp.split.map { |e| e.to_i }.sort
	pie.each do |x|
		rack.each do |y|
			p rack
			if y<x
				rack.delete_at rack.index(y)
			else
				rack.delete_at rack.index(y)
				count+=1
			end
		end
	end
	puts count
end