a, b = gets.split(" ").map(&:to_i)
c = "."*b
ary = []

a.times do
    d = gets.chomp.to_s
    unless d == c
        ary << d
    end
end

del = []

b.times do |i|
    if ary[0][i] == "."
        (1..(ary.size-1)).to_a.each do |j|
            if ary[j][i] == "."
                if j == ary.size - 1
                    del << i
                end
            else
                break
            end
        end
    end
end

puts ary
if ary.size == 1
    puts "#"
else
    ary.each do |x|
        a = x
        del.each do |y|
            a.delete_at(y)
        end
        puts a
    end
end
