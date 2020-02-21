l, r = gets.split(" ").map(&:to_i)
array = []
if r - l >= 2019
    puts 0
else
    (l..r).to_a.each do |i|
        (i+1..r).to_a.each do |j|
            array << i*j%2019
        end
    end
end

puts array.min