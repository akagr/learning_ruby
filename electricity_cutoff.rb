require 'prime'

def func(x,y)
	lights="1"*(y+1)
	i=1
	for a in 1..y do		
		while lights[i]=="0" do
			i=(i+1)%18
		end
		lights[i]="0"
		i=(i+x)%y
		i+=1 if i==0