n = gets.chomp.to_i
ary_1 = gets.split(" ").map(&:to_i)
ary_2 = gets.split(" ").map(&:to_i)
max = 0

n.times do |i|
  if max < ary_1[0..i].inject(:+) + ary_2[i..-1].inject(:+)
    max = ary_1[0..i].inject(:+) + ary_2[i..-1].inject(:+)
  end
end

puts max