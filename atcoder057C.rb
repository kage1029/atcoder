require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

n = gets.chomp.to_i
ary = divisors(n)
cnd = ary[0..(ary.size / 2)]
s = n.to_s.size

cnd.each do |x|
  if [x, n / x].max.to_s.size < s
    s = [x, n / x].max.to_s.size
  end
end

puts s