#correct answer

a,b = gets.chomp.split

h={}
h["_"] = " "
h["."] = "."
h[","] = ","
h["?"] = "?"
h["!"] = "!" 

x=[*("a".."z")]

a = a.to_i

c = b.upcase.split(//)
b = b.split(//)

b.size.times do |i|
	h[x[i]] = b[i]
	h[x[i].upcase] = c[i]
end

a.times do
	str=gets.chomp.split(//)
	str.each do |n|
		
		print h[n]
		
	end
	puts("")
end

