n = gets.chomp.to_i
array = []
n_route = Math.sqrt(n).to_i

(1..n_route).to_a.each do |i|
  if n % i == 0
    array << [i, n/i]
  end
end

pick = array.min_by{|a, b| a+b}

puts pick[0] + pick[1] - 2
