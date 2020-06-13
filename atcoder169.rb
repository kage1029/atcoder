n = gets.to_i
ary = []
n.times {ary << gets.split(" ").map(&:to_i)}

a = ary.map{|a,b|a}.sort
b = ary.map{|a,b|b}.sort

if n.odd?
  puts b[n/2] - a[n/2] + 1
else
  puts 
end