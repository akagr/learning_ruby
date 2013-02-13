class Akash
	def a
		p "aaaaa"
	end
	def b
		p "bbbbb"		
	end
end

class Bisc < Akash
	def b
		super
	end
	def a
		super
		p "ddddd"
	end
end

x = Bisc.new
x.b
