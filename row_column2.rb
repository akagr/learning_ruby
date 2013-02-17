#time limit exceeded

require "matrix"

n, q = gets.chomp.split.map { |x| x.to_i }
mat=Matrix.build(n) { 0 }
maxi=0
q.times do
	query = gets.chomp.split
	case query[0]
	when "RowAdd"
		row = query[1].to_i-1
		val = query[2].to_i
		mr=Matrix.build(n) do |r, c| 
			if r==row
				val
			else 
				0 
			end
		end
		mat+=mr
		
	when "ColAdd"
		col = query[1].to_i-1
		val = query[2].to_i
		mr=Matrix.build(n) do |r, c| 
			if c==col
				val
			else 
				0 
			end
		end
		mat+=mr
	end
	m=mat.to_a
	maxi=m[0].max
	m.each { |x| maxi=x.max if maxi<x.max}
end
puts maxi