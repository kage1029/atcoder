n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
 
if ary.size == 1
    puts "Yes"
    exit
end
 
(n-1).downto(1) do |i|
    if  ary[i] < ary[(i-1)]
        ary[(i-1)] -= 1
        if ary[i] < ary[(i-1)]
            puts "No"
            exit
        end
    end
end

puts ary == ary.sort ? "Yes" : "No"