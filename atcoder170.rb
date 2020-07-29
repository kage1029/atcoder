n, m, k = gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i)
ary_b = gets.split(" ").map(&:to_i)
ans = 0
ary = [1]
ary.shift
i = 0
p ary.size
(n+m).times do
  p i
  if ary_a[0].size == 0
    ary << ary_b[0]
    ary_b.shift
  elsif ary_b[0].size == 0
    ary << ary_a[0]
    ary_a.shift
  elsif ary_a[0] >= ary_b[0]
    ary << ary_b[0]
    ary_b.shift
  else
    ary << ary_a[0]
    ary_a.shift
  end
  i += 1
end

ary.each do |x|
  if k - x >= 0
    k -= x
  else
    break
  end
  ans += 1
end

puts ans

puts ary[0]