require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

a, b = gets.split(" ").map(&:to_i)
ary = divisors(a) & divisors(b)
cnt = 1

ary.each do |x|
  if x.prime?
    cnt += 1
  end
end

puts cnt
