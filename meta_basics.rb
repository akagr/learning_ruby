class Abc
	def self.create(b)
		define_singleton_method(b.to_sym) {|x| puts x }
	end
end

puts Abc.methods(false)
b=gets.chomp
Abc.create(b)
puts Abc.methods(false)
Abc.send(b.to_sym, 5)

