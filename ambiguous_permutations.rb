while (x=gets)!="0\n" do
	i=1
	$b=[]
	st=gets.chomp.split(/\s/)
	am=st.map { |e| e.to_i }
	am.each do |y| 
		$b[y-1]=i
		i+=1
	end
	puts am==$b ? 'ambiguous' : 'not ambiguous'
end