a, b = gets.chomp.split.map { |x| x.to_i }
#puts a, b
ans = "YES"
x=gets.chomp
(a-1).times do
	temp=gets.chomp
	if temp==x or temp.count(temp[0])!= b then
		ans="NO"
		#break
	end
	x=temp
end
puts ans