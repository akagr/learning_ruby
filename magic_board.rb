n, s = gets.chomp.split(/\s/)
row= Hash.new("000")
col= Hash.new("000")
rel = {3 => "0", 0=>"1"}
n= n.to_i
s.to_i.times do
	query = gets.chomp.split(/\s/)
	case query[0]
	when "RowQuery"
		puts row[query[1]].count('0')
	when "ColumnQuery"
		puts col[query[1]].count('0')
	when "RowSet"
		if rel[row[query[1]]]!=query[2]
			row[query[1]]=0
			for x in query[]
	when "ColSet"
		set_column query[1], query[2]
	end
end