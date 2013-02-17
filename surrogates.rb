# Time limit exceeded

a=gets.chomp.split.map { |x| x.to_i }
dna=[]
a[0].times do
	dna<<gets.chomp
end
#out=Hash.new {|h,k| h[k] = [] }
#dna.each do |x|
#	cnt=(dna.count x)-1
#	
#	out[cnt]<<x unless out[cnt].include? x
#end
output=Hash.new(0)
while dna.size>0 do
	cnt= dna.count(dna[0])-1
	output[cnt]+=1
	dna.delete dna[0]
end

a[0].times { |i| puts output[i] }


