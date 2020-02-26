n, t = gets.split(" ").map(&:to_i)
ary = []
n.times do
  ary << gets.split(" ").map(&:to_i)
end

min = 1001
num = -1

n.times do |i|
    if ary[i][1] <= t && ary[i][0] < min
        min = ary[i][0]
        num = i
    end
end

puts num >= 0 ? min : "TLE"
