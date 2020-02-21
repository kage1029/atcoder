n = gets.to_i
array = []
n.times do
  array_a << gets.split(' ')
end

array = []

(n-1).times do |i|
	((i+1)..n).to_a.each do |j|
		if array_a[i][0] ==	array_a[j][0] && array_a[i][1] == array_a[j][1]
				

result = [array[0]]

(1..n-1).to_a.each do |i|
	if result[-1][0] == array[i][0] # 日にちが同じ
		if result[-1][1] == array[i][1] # 商品が同じ
			result[-1][3] += array[i][3] # 商品の数を足す
		elsif result[-1][3] == array[i][3]
			result << array[i]
		elsif array[i][3] > result[-1][3]
			result[-1] = array[i]
		end
	else # 日にちが違う
		result << array[i]
	end
end

p result
