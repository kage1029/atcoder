n, m = gets.split(" ").map(&:to_i)
ary = []
n.times do
  ary << gets.split(" ").map(&:to_i)
end

ary = ary.sort
i = 0
sum = 0

while m > 0
    if m - ary[i][1] >= 0
        sum += ary[i][0] * ary[i][1]
        m -= ary[i][1]
    else
        sum += m * ary[i][0]
        m = 0
    end
    i += 1
end

puts sum