n, m, c = gets.split(" ").map(&:to_i)
ary_b = gets.split(" ").map(&:to_i)

ary = []
n.times do
  ary << gets.split(" ").map(&:to_i)
end

clu = 0
ac = 0

ary.each do |x|
    m.times do |i|
        clu += x[i] * ary_b[i]
    end
    if clu + c > 0
        ac += 1
    end
    clu = 0
end

puts ac