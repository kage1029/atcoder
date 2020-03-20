s = gets.chomp.to_s.split(//)
n = s.size
ary = Array.new(n + 1, 0)

i = 0
while i < n
  if s[i] == "<"
    ary[i+1] = ary[i] + 1
  end
  i += 1
end

i = n - 1

while i >= 0
  if s[i] == ">"
    ary[i] = [ary[i+1] + 1, ary[i]].max
  end
  i -= 1
end

puts ary.inject(:+)