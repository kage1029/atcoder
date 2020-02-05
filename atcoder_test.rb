n = gets.chomp.to_i
array = []

n.times do
  array << gets.chomp.to_i
end

array_max = array.sort.reverse
i = 0

n.times do |i|
    if array[i] != array_max[0]
        puts array_max[0]
    else
        puts array_max[1]
    end
end
