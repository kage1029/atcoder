N = gets.to_i
array = []
N.times do
  array << gets.split(' ')
end

array_sorted = array.sort{|a, b| (a[0] <=> b[0]).nonzero? || (b[1].to_i <=> a[1].to_i)}

puts "------"
p array
puts "------"
p array_sorted
puts "------"

ans = []
array_sorted.each do |e|
  array.each.with_index(1) do |e2, i|
    if e[0] == e2[0] && e[1] == e2[1]
      ans << i
      break
    end
  end
end
 
puts ans