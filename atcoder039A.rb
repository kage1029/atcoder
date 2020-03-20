s = gets.chomp.to_s.split(//)
n = gets.chomp.to_i
cnt = 0
same = 1

if s.uniq.size == 1 && s.size.odd?
  puts (s.size * n) / 2
  exit
end

s.size.times do |i|
  if s[i] == s[i+1]
    same += 1
    if same.even?
      cnt += 1
    end
  else
    same = 1
  end
end

s2 = s * 2
cnt2 = 0
same2 = 1

s2.size.times do |i|
  if s2[i] == s2[i+1]
    same2 += 1
    if same2.even?
      cnt2 += 1
    end
  else
    same2 = 1
  end
end

if cnt * 2 == cnt2
  puts cnt * n
else
  puts cnt * n + (n - 1)
end
