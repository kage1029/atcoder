n = gets.chomp.to_i
ary = []
n.times do
  ary << gets.split(' ')
end
 
sum = 0
 
n.times do |i|
  if ary[i][1] == "JPY"
    sum += ary[i][0].to_f
  else
    sum += ary[i][0].to_f * 380000.0
  end
end
 
puts sum