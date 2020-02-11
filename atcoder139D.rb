n = gets.chomp.to_i
if n == 1
  puts 0
else
  puts (n * (n-1))/2
end
