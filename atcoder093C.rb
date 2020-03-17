ary = gets.split(" ").map(&:to_i).sort.reverse

sum = ary[0] - ary[1]

if (ary[0] - (ary[2] + sum)).odd?
  sum += (ary[0] - (ary[2] + sum) + 1) / 2 + 1
else
  sum += (ary[0] - (ary[2] + sum)) / 2
end

puts sum
