n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

puts ((n - k) / (k - 1).to_f).ceil + 1