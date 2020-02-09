# TLE

n = gets.chomp.to_i
k = gets.chomp.to_i

result = 0

(1..n).to_a.each do |i|
    if i.to_s.delete("0").size == k
        result += 1
    end
end

puts result
