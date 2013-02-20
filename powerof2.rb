# time limit exceeded
gets.to_i.times do
	a=gets.chomp.split
	num=gets.chomp.split
	num=num.map { |i| i.to_i }
	a[1].to_i.times do
		q=gets.chomp.split
		case q[0]
		when "0"
			s=q[1].to_i-1
			e=q[2].to_i-1
			while s<=e do
				num[s]*=2
				num[s]/=2048 if num[s]%2048==0
				s+=1
			end
		when "1"
			x=0
			s=q[1].to_i-1
			e=q[2].to_i-1
			while s<=e do
				x+=(num[s]**2)
			end
			puts x
		end
	end
end