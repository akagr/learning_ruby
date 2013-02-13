STDIN.gets.to_i.times do
	x = STDIN.gets.to_i
	STDOUT.puts x.even? ? x:x-1
	end 