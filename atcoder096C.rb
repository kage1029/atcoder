a, b, c, x, y = gets.split(" ").map(&:to_i)
sum = 0
z = [x, y].min

if c * 2 <= a + b
  sum += z * c * 2
  x -= z
  y -= z
end

puts sum + [a, c * 2].min * x + [b, c * 2].min * y
