n = gets.to_i
a = gets.strip.split.map(&:to_i)
m = gets.to_i
b = gets.strip.split.map(&:to_i)
h1 = Hash.new(0)
h2 = Hash.new(0)
a.each do |x|
    h1[x]+=1
end
b.each do |x|
    h2[x]+=1
end

b.sort.uniq.each do |x|
    print x," " if h2[x]-h1[x]>0
end
