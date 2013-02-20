gets.to_i.times do
	n, c = gets.chomp.split.map { |e| e.to_i }
	a = gets.chomp.split.map { |e| e.to_i }
	if c>=a.inject(:+)
		puts "Yes"
	else
		puts "No"
	end
end