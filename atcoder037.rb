s = gets.chomp.to_s.split(//)
r = s[0]
cnt = 0
i = 1

while i <= s.size do
  if r.size == 2 || r != s[i]
    r = s[i]
    cnt += 1
    i += 1
  elsif r == s[i]
    r = s[i..i+1]
    cnt += 1
    i += 2
  end
end

puts cnt
