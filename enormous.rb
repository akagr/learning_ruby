c, divisor = *(gets.chomp.split(/\s/))
c, divisor = c.to_i, divisor.to_i
x=0
c.times do
	x+= (gets.to_i)%divisor==0 ? 1 : 0
	end
	puts x 