n, m = gets.split(" ").map(&:to_i)
ary = []
m.times do
  ary << gets.split(" ").map(&:to_i)
end
 
ary_one = []
ary_n = []
 
ary.each do |x|
  if x[0] == 1
    ary_one << x[1]
  elsif x[1] == n
    ary_n << x[0]
  end
end

ary_n.uniq.sort

ary_one.uniq.each do |x|
  if ary_n.bsearch{|y| y == x}
    puts "POSSIBLE"
    exit
  end
end
 
puts "IMPOSSIBLE"