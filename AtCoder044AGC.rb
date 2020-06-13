require 'prime'
n = gets.to_i
ary = []
n.times {ary << gets.split(" ").map(&:to_i)}

# N A B C D

ary.each { |x|
  factors = x[0].prime_division
  p factors
  ans = x[4]
  cul = 1


  puts "aa"
}