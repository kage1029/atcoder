n = gets.to_i
ary = []
n.times do
  ary << gets.chomp.to_i
end

ary = ary.group_by(&:itself).map{ |key, value| [key, value.count] }

cnt = 0

ary.each do |x|
  if x[1].odd?
    cnt += 1
  end
end

puts cnt
ary.group_by(&:itself).map{|key, value| }