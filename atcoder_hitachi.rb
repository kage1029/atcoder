a, b, m = gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i)
ary_b = gets.split(" ").map(&:to_i)

ary_c = []
m.times do
  ary_c << gets.split(" ").map(&:to_i)
end

min = ary_a.sort[0] + ary_b.sort[0]

ary_c.each do |x|
  if min > ary_a[(x[0]-1)] + ary_b[(x[1]-1)] - x[2] 
    min = ary_a[(x[0]-1)] + ary_b[(x[1]-1)] - x[2]
  end
end

puts min
