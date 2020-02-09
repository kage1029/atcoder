n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

if array.size == array.uniq.size
    puts "YES"
else
    puts "NO"
end