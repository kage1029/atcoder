n, l = gets.split(" ").map(&:to_i)
array = []
n.times do
  array << gets.chomp.to_s
end

puts array.sort.join