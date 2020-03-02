n, m = gets.split(" ").map(&:to_i)
ary_a = gets.split(" ").map(&:to_i).sort.reverse

ary_bc = []
m.times do
  ary_bc << gets.split(" ").map(&:to_s)
end

ary_bc = ary_bc.sort {|a,b| a[1] <=> b[1]}.reverse

m.times

# 途中