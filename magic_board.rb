row= {}
col= {}
n, s = gets.chomp.split(/\s/)

n= n.to_i
n.times do |x|
	row[x+1]=col[x+1]="0"*n
end
s.to_i.times do
	query = gets.chomp.split(/\s/)
	case query[0]
	when "RowQuery"
		puts row[query[1].to_i].count('0')
	when "ColQuery"
		puts col[query[1].to_i].count('0')
	when "RowSet"
		row[query[1].to_i]=query[2]*n
		n.times do |x|
			col[x+1][query[1].to_i-1]=query[2]
		end
	when "ColSet"
		col[query[1].to_i]=query[2]*n
		n.times do |x|
			row[x+1][query[1].to_i-1]=query[2]
		end
	end
end