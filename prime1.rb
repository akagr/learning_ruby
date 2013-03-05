# time limit exceeded

require 'prime'

gets.to_i.times do
	l, u = gets.chomp.split.map { |x| x.to_i }
	Prime.each(u) { |p| puts p if p >= l }
	puts ""
end