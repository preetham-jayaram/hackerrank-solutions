n = gets.to_i
ar = Array.new(n) { Array.new(n)}
n.times do |i|
    ar[i] = gets.split(//)
end
(0..n-1).each do |x|
    (0..n-1).each do |y|
        if x==0 || y==0 || x==n-1 || y==n-1
            print ar[x][y]
        elsif ar[x][y]>ar[x][y-1] && ar[x][y] > ar[x][y+1] && ar[x][y] > ar[x-1][y] && ar[x][y] > ar[x+1][y]
            print "X"
        else
            print ar[x][y]
        end
    end
    puts   
end
