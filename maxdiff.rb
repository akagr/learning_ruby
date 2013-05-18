gets.to_i.times do
	n, k = gets.chomp.split.map(&:to_i)
	w = gets.chomp.split.map(&:to_i).sort
	k = n-k if k>n/2
	puts (w[k..(n-1)].inject(&:+))-(w[0..(k-1)].inject(&:+))
end
__END__
2
5 2
8 4 5 2 10
8 3
1 1 1 1 1 1 1 1