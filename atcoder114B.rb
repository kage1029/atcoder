s = gets.chomp.to_s
ary = []

(s.size - 2).times do |i|
    ary << s[i..i+2].to_i
end

puts (ary.min_by{|x| (x-753).abs} - 753).abs
