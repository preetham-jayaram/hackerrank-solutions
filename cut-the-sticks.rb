n = Integer(gets)
ar = gets.strip.split.map {|i| i.to_i}

while ar.length > 0
    cut = ar.min
    puts ar.length
    ar.map! { |x| x-cut}
    ar.map { |x| ar.delete(x) if x<=0}
end
