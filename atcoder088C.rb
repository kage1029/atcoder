ary_1 = gets.split(" ").map(&:to_i)
ary_2 = gets.split(" ").map(&:to_i)
ary_3 = gets.split(" ").map(&:to_i)

if ary_1[1] - ary_1[0] == ary_2[1] - ary_2[0] && ary_1[1] - ary_1[0] == ary_3[1] - ary_3[0] && ary_1[2] - ary_1[0] == ary_2[2] - ary_2[0] && ary_1[2] - ary_1[0] == ary_3[2] - ary_3[0]
  puts "Yes"
else
  puts "No"
end
