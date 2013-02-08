class Demo

	def initialize
		@x=20
	end
	def method1
		@x=10
	end
	def method2
		print "#{@x}"
		print "akash"
	end
end

a=Demo.new
a.method2
p __FILE__