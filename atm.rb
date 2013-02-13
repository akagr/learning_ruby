a=gets.chomp.split(/\s/)
q, b = a[0].to_i, a[1].to_f
if (q+0.50)<=b
	if q%5==0
		b-=q
		b-=0.50
	end
end
printf("%0.2f", b)