a, b = gets.split(" ").map(&:to_i)

ary = []
b.times do
  ary << gets.split(" ").map(&:to_i)
end

ary_l = []
ary_r = []

ary.each do |x|
    ary_l << x[0]
    ary_r << x[1]
end

if ary_r.min - ary_l.max >= 0
    c = ary_r.min - ary_l.max + 1
else 
    puts 0
    exit
end

puts c > a ? a : c
