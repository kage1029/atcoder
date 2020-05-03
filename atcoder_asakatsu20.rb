n, a, b = gets.split.map(&:to_i)

if a == b 
  puts 1
elsif a < b && n > 1 
  # 引くと最小値の場合が除外されてしまうので1を足す
  puts (n - 2) * (b - a) + 1
else
  puts 0
end
