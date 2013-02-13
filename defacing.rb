h = {0 => [0, 8],
	 1 => [0, 1, 3, 4, 7, 8, 9],
	 2 => [2, 8],
	 3 => [3, 8],
	 4 => [4, 8, 9],
	 5 => [5, 6, 8, 9],
	 6 => [6, 8],
	 7 => [3, 7, 8, 9],
	 8 => [8],
	 9 => [8, 9]}

gets.to_i.times do
	
	dark_score, max_score = *(gets.split(/\s/))
	dark_score, max_score = dark_score.to_i, max_score.to_i
	dark_score
	#diff = max_score.size - dark_score.size
	#dark_score = dark_score.to_a.collect { |e| h[e.to_i].max  }
	#dark_score = dark_score.join
	#dark_score = max_score[0..(diff-1)]+dark_score if diff>0
	#puts dark_score
	#while dark_score.to_i > max_score.to_i
	#for i in dark_score.size

end