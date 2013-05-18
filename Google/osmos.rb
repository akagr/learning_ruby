File.open("A-small-practice.in", 'r') do |afile|
	afile.readline.to_i.times do |t|
		a, n = afile.readline.chomp.split.map(&:to_i)
		motes = afile.readline.chomp.split.map(&:to_i).sort
		moves = 0
		if a == 1
			moves = n
		else
			motes.each_index do |i|
				tries = 0
				if motes[i] < a
					a+= motes[i]
				else
					until (motes[i] < a) or (moves>(n-i)) or tries >= n-i do
						a+=(a-1)
						moves+=1
						tries+=1
					end
					a+= motes[i]
					#moves-=1 if moves>(n-i)
				end
			end
		end
		puts "Case ##{t+1}: #{moves}"
	end
end
__END__
4
2 2
2 1
2 4
2 1 1 6
10 4
25 20 9 100
1 4
1 1 1 1