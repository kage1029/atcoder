n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
ary_h = []

n.times do |i|
  ary_h << [i + 1, ary[i]]
end

ary_h = ary_h.sort {|a,b| a[1] <=> b[1]}.reverse

ary_h.each do |x|
  puts x[0]
end
