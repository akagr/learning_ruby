File.open("A-small.in", 'r') do |afile|
	afile.readline.to_i.times do |t|
		l, h = afile.readline.chomp.split.map(&:to_i)
		lr = Math.sqrt l
		hr = Math.sqrt(h).to_i
		lr = lr.to_i+1 if lr.to_i < lr
		lr = lr.to_i
		fair = [*(lr..hr)].select {|x| x.to_s == x.to_s.reverse}
		square = fair.map { |e| e*e }.select { |x| x.to_s == x.to_s.reverse  }
		puts "Case ##{t+1}: #{square.size}"
	end
end