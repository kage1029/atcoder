n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_s.reverse
end

ary = ary.sort

ary.each do |x|
  puts x.reverse
end
