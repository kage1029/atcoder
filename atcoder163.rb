# n, m = gets.split(" ").map(&:to_i)
# sum = gets.split(" ").map(&:to_i).sum

# if n - sum < 0
#   puts -1
# else
#   puts n - sum
# end

n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)

ary_ans = Array.new(n, 0)

ary.each do |x|
  ary_ans[x-1] += 1
end

puts ary_ans