n = gets.to_i

array = []
n.times do
  array << gets.split(" ").map(&:to_i)
end

array_shaffle =[]

array.permutation(2) do |x|
  array_shaffle << x
end

distance = 0

array_shaffle.each do |x|
  distance += Math.sqrt((x[0][0] - x[1][0])**2 + (x[0][1] - x[1][1])**2)
end

puts distance / array.size