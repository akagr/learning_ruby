File.open("A-small.in", 'r') do |afile|
	n = afile.readline.to_i
	n.times do |test|
		status = "Draw"
		dot=0
		row = []
		row[0]=afile.readline.chomp
		if row[0]==""
			row[0]=afile.readline.chomp
		end
		row[1]=afile.readline.chomp
		row[2]=afile.readline.chomp
		row[3]=afile.readline.chomp

		#puts row

		column = []
		column[0] = row[0][0]+row[1][0]+row[2][0]+row[3][0]
		column[1] = row[0][1]+row[1][1]+row[2][1]+row[3][1]
		column[2] = row[0][2]+row[1][2]+row[2][2]+row[3][2]
		column[3] = row[0][3]+row[1][3]+row[2][3]+row[3][3]

		#puts column

		diagonal=[]
		diagonal[0]=row[0][0]+row[1][1]+row[2][2]+row[3][3]
		diagonal[1]=row[3][0]+row[2][1]+row[1][2]+row[0][3]

		row.each do |line|
			x = line.count("X")
			o = line.count("O")
			t = line.count("T")
			dot+=line.count(".")
			if x+t>=4
				status="X won"
			elsif o+t>=4
				status="O won"
			end
		end
		column.each do |line|
			x = line.count("X")
			o = line.count("O")
			t = line.count("T")
			dot+=line.count(".")
			if x+t>=4
				status="X won"
			elsif o+t>=4
				status="O won"
			end
		end

		#puts diagonal

		diagonal.each do |line|
			x = line.count("X")
			o = line.count("O")
			t = line.count("T")
			dot+=line.count(".")
			if x+t>=4
				status="X won"
			elsif o+t>=4
				status="O won"
			end
		end
				
		status = "Game has not completed" if status=="Draw" and dot>0	

		puts "Case ##{test+1}: "+status
	end
end