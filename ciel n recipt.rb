STDIN.gets.to_i.times do
	menu, base=0, 2048
	price = STDIN.gets.to_i
	while price>0 do
		if price>=base
			price-=base
			menu+=1
		else
			base/=2
		end
	end
	STDOUT.puts menu
end