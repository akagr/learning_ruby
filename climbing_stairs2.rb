require 'scanf'
PHI= (Math.sqrt(5)+1)/2
Phi=PHI-1

def fib_fast(n)
	((PHI**n-(-Phi)**n)/Math.sqrt(5)).to_i
end

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

gets.to_i.times do
	
	steps, guess = scanf("%d%d")
	if steps>1450
		b=fib steps
	else
		b=fib_fast(steps+1)
	end
	#if Mem[steps]==0
	#	b=Mem[steps]=find(steps)
	#else
	#	b=Mem[steps]
	#end
	#p Mem
	ones=b.to_s(2).count("1")
	puts ones==guess ? "CORRECT":"INCORRECT"
end