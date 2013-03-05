gets.to_i.times do
	n=gets.to_i
	a=gets.chomp.split.map { |e| e.to_i }
	sum=0
	mi=a.min
	a.each { |e| sum+=(e-mi) }
	puts sum
end