# n = 42

# while n < 130_000_000
#   n *= 2
# end

# puts n

# n, m = gets.split.map(&:to_i)
# ary = []
# m.times {ary << gets.split(" ").map(&:to_i)}
# ary_flag = Array.new(n).map{Array.new(2,1)}

# ary_flag[0][0] = n+1

# ary.each {|x|
#   if ary_flag[x[0]-1][0] == n+1
#     ary_flag[x[1]-1][0] = n+1
#   end
#   ary_flag[x[0]-1][1] -= 1
#   ary_flag[x[1]-1][1] += 1
#   if ary_flag[x[0]-1][1] == 0
#     ary_flag[x[0]-1][0] = 1
#   end
# }

# cnt = 0
# ary_flag.each {|x|
#   if x[0] == n+1 && x[1] > 0
#     cnt += 1
#   end
# }

# puts cnt

x, y = gets.split(" ").map(&:to_i)
n = gets.chomp.to_i
ary = []
n.times {ary << gets.split(" ").map(&:to_i)}

