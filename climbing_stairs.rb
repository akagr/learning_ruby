require 'scanf'

Mem=Hash.new(0)

def fib(n)
	a=b=1
	return 1 if n==1 or n==0
	while n>1 do
		c=a+b
		a=b
		b=c
		n-=1
	end
	c
end

def find steps
	if ::Mem[steps-1]!=0 and ::Mem[steps-2]!=0
		return ::Mem[steps-1]+::Mem[steps-2]
	end
	if ::Mem[steps-1]==0 and ::Mem[steps-2]==0
		return fib steps
	elsif ::Mem[steps-1]==0
		return ::Mem[steps-2] + find(steps-1)
	else
		return ::Mem[steps-1] + find(steps-2)	
	end
end

gets.to_i.times do
	
	steps, guess = scanf("%d%d")
	if Mem[steps]==0
		b=Mem[steps]=find(steps)
	else
		b=Mem[steps]
	end
	p Mem
	ones=b.to_s(2).count("1")
	puts ones==guess ? "CORRECT":"INCORRECT"
end