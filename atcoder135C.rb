n = gets.chomp.to_i
array_a = gets.split(" ").map(&:to_i)
array_b = gets.split(" ").map(&:to_i)

result = 0
array_b.size.times do |i|
	if array_a[i] - array_b[i] < 0
		result += array_a[i]
		if array_a[i+1] - (array_b[i] - array_a[i]) >= 0
			result += array_b[i] - array_a[i]
			array_a[i+1] = array_a[i+1] - (array_b[i] - array_a[i])
		else
			result += array_a[i+1]
			array_a[i+1] = 0
		end
	else
		result += array_b[i]
	end
end

puts result
