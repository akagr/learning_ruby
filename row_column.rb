#time limit exceeded

n, q = gets.chomp.split.map { |x| x.to_i }
h = Hash.new { |hash, key| hash[key] = Array.new(n, 0) }
maxi = Array.new(n, 0)
q.times do
	query = gets.chomp.split
	case query[0]
	when "RowAdd"
		row = query[1].to_i-1
		val = query[2].to_i
		h[row].map! { |x| x+val }
		maxi[row]=h[row].max
	when "ColAdd"
		col = query[1].to_i-1
		val = query[2].to_i
		n.times do |i|
			h[i][col]+=val
			maxi[i]=h[i].max
		end
	end
	#p h
	#p maxi
end
puts maxi.max