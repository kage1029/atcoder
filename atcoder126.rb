n, k = gets.split(" ").map(&:to_i)

i = 1
sum = 0
[n, k - 1].min.times do
  sum += 2**(-Math.log(k.to_f / i, 2).ceil)
  i += 1
end

if n >= k
  puts (sum / n.to_f) + (1 - (k - 1) / n.to_f)
else
  puts sum/ n.to_f
end

# wanda_tea_coffeeさんの回答
# n, k = gets.chomp.split.map(&:to_r)
# sum = 0
# 1.upto([n, k - 1].min) do |i|
#   sum += 2**(-Math.log(k / i, 2).ceil)
# end
# puts (sum / n).to_f + (n >= k ? 1 - (k - 1) / n : 0)