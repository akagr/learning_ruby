#accepted

n, q = gets.chomp.split.map { |x| x.to_i }
row=Array.new(n) { 0 }
col=Array.new(n) { 0 }
q.times do
	query = gets.chomp.split
	case query[0]
	when "RowAdd"
		r = query[1].to_i-1
		val = query[2].to_i
		row[r]+=val
	when "ColAdd"
		c = query[1].to_i-1
		val = query[2].to_i
		col[c]+=val
	end
end
puts(row.max+col.max) 