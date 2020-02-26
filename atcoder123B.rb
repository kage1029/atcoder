ary = []
5.times do
  ary << gets.chomp.to_i
end

ary = ary.sort_by{|x| (x-1)%10 }
sum = 0

(1..4).to_a.each do |i|
    sum += ary[i] % 10 == 0? ary[i]: ary[i] + 10 - ary[i]%10
end

puts sum + ary[0]
