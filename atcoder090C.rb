n, m = gets.split(" ").map(&:to_i)

puts (n * m - ((n - 2)* 2 + m * 2)).abs

