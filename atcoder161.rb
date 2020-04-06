k = gets.to_i
ary = *1..9
a = 0

k.times{
  a = ary.shift
  b = a % 10
  ary << 10 * a + b - 1 if b != 0
  ary << 10 * a + b
  ary << 10 * a + b + 1 if b != 9
}

puts a
