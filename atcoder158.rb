# TLE
n, p = gets.split(" ").map(&:to_i)
s = gets.chomp.to_s.split(//)
cnt = 0

n.times do |i|
  (n - i).times do |j|
    if s[i..i+j].join.to_i % p == 0
      cnt += 1
    end
  end
end

puts cnt

