n, y = gets.split(" ").map(&:to_i)

if y > n * 10000 || y < n * 1000
  puts "-1 -1 -1"
  exit
end

x = 0

(n + 1).times do |i|
  (n + 1).times do |j|
    x = i * 10000 + j * 5000 + (n - (i + j)) * 1000
    if x == y && n - (i + j) >= 0
      puts "#{i} #{j} #{n - (i + j)}"
      exit
    end
  end
end

puts "-1 -1 -1"