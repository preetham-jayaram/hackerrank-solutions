gets.to_i.times do
    m = Integer(gets)
    n = Integer(gets)
    ar = gets.strip.split.map(&:to_i)
    ele = ar.combination(2).detect { |a,b| a+b == m }.uniq
    res =[]
    ar.each_with_index {|x,i| res <<  i+1 if (ele.include? x)}
    puts res * " "
    
end
