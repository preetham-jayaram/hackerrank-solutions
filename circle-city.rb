gets.to_i.times do 
    n,k = gets.strip.split.map(&:to_i)
    r = Math.sqrt(n)
    count = 0
    (0..r).each do |i|
        v =Math.sqrt(n-(i*i))
                   
        if v.floor == v
            count+=4 if v!=0
        end
    end
    
    puts (count > k) ? "impossible" : "possible"
   
end
