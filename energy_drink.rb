gets.to_i.times do
	steps=gets.to_i
	data=gets.chomp.split
	count=0
	finish=data.size
	while finish>0
		for i in 0..finish-1 do
			if data[i].to_i>=(finish-i)
				finish=i
				count+=1
				break
			end
		end
	end
	puts count
end