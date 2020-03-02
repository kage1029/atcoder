n, m = gets.split(" ").map(&:to_i)
ary = []
m.times do
  ary << gets.split(" ").map(&:to_i)
end
 
if m == 0
  if n == 1
    puts 0
    exit
  else
    puts 10**(n-1)
    exit
  end
end
 
ary = ary.sort!
 
# [1,0]がOKなとき
if n == 1 && ary.include?([1, 0])
  puts 0
  exit
end
 
# [1,0]がダメなとき
if n > 1 && ary.include?([1, 0])
  puts -1
  exit
end
 
if m >= 2
  (m-1).times do |i|
    if ary[i][0] == ary[i+1][0] && ary[i][1] != ary[i+1][1]
      puts -1
      exit
    end
  end
end
 
num = "0"*n
 
m.times do |i|
  num[(ary[i][0]-1)] = "#{ary[i][1]}"
end
 
if num[0] != "0"
  puts num.to_i
else
  num[0] = "1"
  puts num.to_i
end
