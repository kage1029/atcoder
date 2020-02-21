n, k = gets.split(" ").map(&:to_i)
array = gets.split(" ").map(&:to_i)
 
array_shaffle = []
array.combination(2) do |x|
    array_shaffle << x[0]*x[1]
end

puts array_shaffle.sort[k-1]
