x, y, a, b, c= gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i).sort.reverse
ary_b = gets.split(" ").map(&:to_i).sort.reverse
ary_c = gets.split(" ").map(&:to_i).sort.reverse

sum_a = ary_a[0..(x-1)]
sum_b = ary_b[0..(y-1)]
sum = sum_a.inject(:+) + sum_b.inject(:+)

if ary_a[(x-1)] >= ary_c[0] && ary_b[(y-1)] >= ary_c[0]
  puts sum
  exit
end
