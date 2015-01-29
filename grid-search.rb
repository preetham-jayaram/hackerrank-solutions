gets.to_i.times do 
    x,y = gets.strip.split.map(&:to_i)
    a =[]
    (0..x-1).each do |i|
        a[i]=gets.strip
    end
    r,c = gets.strip.split.map(&:to_i)
    b =[]
    (0..r-1).each do |i|
        b[i]=gets.strip
    end
    
    j=0
    res =0 
    prev = -1
    (0..x-1).each do |i|
        all = a[i].enum_for(:scan, /#{b[j]}/).map {Regexp.last_match.begin(0)}
            t = i
            all.each do |f|
                j = 0
                while j<r && a[t][f..f+c-1] == b[j]
                        j+=1
                        t+=1
                end
                if j == r 
                    res = 1 
                    break
                end
            end
            break if res == 1
    end
    puts res == 1 ? "YES": "NO"    
end
