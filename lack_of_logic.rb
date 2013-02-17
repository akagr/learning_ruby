#accepted

gets.to_i.times do
	quest= gets.chomp.downcase
	str=quest.chars.to_a.uniq.select { |e| e>="a" and e<="z" }
	alph=*("a".."z")
	str.each do |x|
		alph.delete x
	end
	if alph.size==0
		puts "~"
	else
		puts alph.first
	end
end