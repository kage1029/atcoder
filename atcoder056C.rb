x = gets.chomp.to_i
n = 1

while n * (n + 1) < 2 * x
  n += 1
end

puts n
