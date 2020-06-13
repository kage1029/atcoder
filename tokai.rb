n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

k.times do
  ary_cnt = Array.new(n, 0)
  n.times do |i|
    min = i - ary[i] >= 0? i - ary[i]: 0
    max = i + ary[i] <= n-1? i + ary[i]: n-1
    min
  end
  p ary
  ary = ary_cnt
end

puts ary.join(" ")