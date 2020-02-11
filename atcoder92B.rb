n = gets.chomp.to_i
d, x = gets.split(" ").map(&:to_i)

array = []
n.times do
  array << gets.chomp.to_i
end

eat_day = 0

n.times do |a|
    (1..d).each do |i|
        if i == 1
            x += 1
            eat_day += array[a] + 1
        elsif i == eat_day
            x += 1
            eat_day += array[a]
        end
    end
    eat_day = 0
end

puts x
