File.open("A-small-practice.in", 'r') do |afile|
	afile.readline.to_i.times do |t|
		n=afile.readline.to_i
		hedge = afile.readline.chomp.split.map(&:to_i)
		(1..n-2).each do |x|
			hedge[x] = (hedge[x-1]+hedge[x+1])/2.0 if hedge[x] > (hedge[x-1]+hedge[x+1])/2.0
		end
		puts "Case ##{t+1}: #{hedge[-2]/1.0}"
	end
end