# n = gets.to_i
# ary = []
# n.times do
#   ary << gets.chomp.to_s.split(//).sort.join
# end

# anaglam = 0

# n.times do |i|
# 	(i+1..(n-1)).to_a.each do |j|
# 		anaglam += 1 if ary[i] == ary[j]
# 	end
# end

# puts anaglam

# N = gets.strip.to_i
# hash = Hash.new
# count = 0

# N.times do |n|
# 	s = gets.strip.split('').sort.join
# 	puts s.class
#   if hash.key?(s)
# 		hash[s] += 1
# 		# 文字列がそれまでにでてきたアナグラムひとつひとつとペアになるので += hash[s]
#     count += hash[s]
# 	else
#     hash[s] = 0
#   end
# end
 
# p hash

# h = Hash.new
# s = "ikkkkkkk"
# h[s] = 0
# h[:aa] = 0
# h[:bb] = 1

# p h

n = gets.chomp.to_i
h = Hash.new
count = 0

n.times do
	s = gets.chomp.to_s.split(//).sort.join
	if h.key?(s)
		h[s] += 1
		count += h[s]
	else
		h[s] = 0
	end
end

puts count
