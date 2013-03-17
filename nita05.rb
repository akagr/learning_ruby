# TLE
n, m, a = gets.chomp.split.map { |x| x.to_i }
x = (n/a)
y = (m/a)
x+=1 unless n%a==0
y+=1 unless m%a==0
puts (x*y) 