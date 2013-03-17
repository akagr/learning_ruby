class Akash
	def method_missing(name, *args, &body)
		puts "You called #{name} method"
		if name =~ /=/ and args != nil then
			name = name.to_s.gsub(/=/, "")
			instance_variable_set("@#{name}", args[0]) 
		end
		instance_variable_get("@#{name}")
	end
end

a= Akash.new
p a.instance_variables
a.size = 30
p a.instance_variables
p a.size
p a.instance_variables

