# メソッド使う方法（bserch)

A, B, X = gets.split.map(&:to_i)

ans = (1..10**9).bsearch do |n|
  A * n + B * n.to_s.size > X
end

if ans
  puts ans - 1
else 
  puts 1000000000
end

# 使わん方法

a, b, x = gets.chomp.split.map(&:to_i)
ans = 0
min = 1
max = 1e9.to_i
while min <= max do
  mid = (min + max) / 2
  if x >= a * mid + b * (Math.log10(mid).to_i + 1)
    ans = mid
    min = mid + 1
  else
    max = mid - 1
  end
end
 
puts ans
