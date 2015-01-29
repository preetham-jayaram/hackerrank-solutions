#!/bin/ruby
# Head ends here
def  pairs( a,k) 
    #a is an array containing numbers and k is the difference.
    h = Hash.new(0)
    a.map { |x| h[x]+=1 }
    count = 0
    a.map { |x| count+=1 if h[x+k] == 1}
    count
end
# Tail starts here
a = gets.strip.split(" ").map! {|i| i.to_i}
b_size=a[0]
k=a[1]
b = gets.strip.split(" ").map! {|i| i.to_i}
puts pairs(b,k)

