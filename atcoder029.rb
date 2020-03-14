n = gets.chomp.to_i
ary_a = Array.new(n, "a")
ary_b = Array.new(n, "b")
ary_c = Array.new(n, "c")

ary = ary_a + ary_b + ary_c
ans = []

ary.permutation(n) do |x|
  ans << x.join
end

puts ans.uniq
