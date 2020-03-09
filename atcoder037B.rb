n, q = gets.split(" ").map(&:to_i)
ary_change = []
q.times do
  ary_change << gets.split(" ").map(&:to_i)
end
 
ary = Array.new(n, 0)

ary_change.each do |x|
  ((x[0]-1)..(x[1]-1)).to_a.each do |i|
    ary[i] = x[2]
  end
end
 
puts ary