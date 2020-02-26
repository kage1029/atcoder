n, m, x, y = gets.split(" ").map(&:to_i)
ary_x = gets.split(" ").map(&:to_i)
ary_y = gets.split(" ").map(&:to_i)

if ary_x.max < ary_y.min
    if ((ary_x.max+1..ary_y.min).to_a & (x+1..y).to_a).size >= 1
        puts "No War"
    else
        puts "War"
    end
else
    puts "War"
end
