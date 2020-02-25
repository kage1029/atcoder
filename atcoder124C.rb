s = gets.chomp.to_s.split(//)

odd = s.each_slice(2).map(&:first)
even = s.each_slice(2).map(&:last)

odd_one = odd.count("1")
even_one = even.count("1")

if odd_one >= even_one
    puts (odd.size - odd_one) + even_one - s.count("1") == 0 ? 1:0
else
    puts (even.size - even_one) + odd_one - s.count("1") == 0 ? 1:0
end