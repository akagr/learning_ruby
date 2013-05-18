gets.to_i.times do
	m, w = gets.chomp.split
	m_exp = m.split(//).join(".*?")
	w_exp = w.split(//).join(".*?")
	if m =~ /#{w_exp}/ or w =~ /#{m_exp}/
		puts "YES"
	else
		puts "NO"
	end
end
__END__
3
john johanna
ira ira
kayla jayla