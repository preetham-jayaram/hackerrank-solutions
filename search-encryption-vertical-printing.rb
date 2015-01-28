a = gets
l = Math.sqrt(a.length).floor
h = Math.sqrt(a.length).ceil
l+=1 if (l*h)<a.length
b =  a.scan(/.{1,#{h}}/).map{|x| x.split(//)}
(0..h-1).each do |i|
    (0..l-1).each do |j|
       print b[j][i] 
    end
    print" "
end
