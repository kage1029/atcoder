# n = gets.chomp.to_i
# a = (n / 1.08).ceil
# ans = 0

# if (a*1.08).to_i == n
#     puts a
# else
#     puts ":("
# end




# n = gets.chomp.to_i
# s = gets.chomp.split(//).map(&:to_i)
# t = s
# sum = 0
# cnt = 0
# candidates = []

# (0..9).to_a.permutation(3) do |x|
#     candidates << x
# end

# candidates.each do |x|
#     t = s
#     x.each do |y|
#         if t.include?(y)
#             t = t[t.index(y)+1..-1]
#             cnt += 1
#             p t
#             if cnt == 3
#                 sum += 1
#             end
#         end
#     end
#     cnt = 0
# end

# puts sum
