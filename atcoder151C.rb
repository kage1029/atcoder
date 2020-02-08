n, d = gets.split(" ").map(&:to_i)
array = []
n.times do
    array << gets.split(" ").map(&:to_i)
end

array_com = []

array.combination(2) do |x|
    array_com << x
end

cul_m = 0
result = []

array_com.each do |x|
    d.times do |i|
        cul_m += (x[0][i-1] - x[1][i-1])**2
    end
    result << Math.sqrt(cul_m)
    cul_m =0
end

ans = 0

result.each do |x|
    if x == x.to_i
        ans += 1
    end
end

puts ans

