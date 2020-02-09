s, t = gets.split(" ").map(&:to_s)
a, b = gets.split(" ").map(&:to_i)
u = gets.chomp.to_s

if u == s
    a -= 1
else
    b -= 1
end

puts "#{a} #{b}"
