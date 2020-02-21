n = gets.chomp.to_i
array = gets.split(" ").map(&:to_i)

array_odd = array.each_slice(2).map(&:first)
array_1 = array_odd.group_by(&:itself).map{|k, v| [k, v.count]}.sort_by{|k,n| -k}
array_even = array.each_slice(2)
array_2 = array_even.map(&:last).group_by(&:itself).map{|k, v| [k, v.count]}.sort_by{|k,n| -k}

if array_1.flatten.size/2 =  1 && array_2.flatten.size/2 = 1 && array_1 != array_2
    puts 0
elsif array_1 == array_2
    puts array_1.size
elsif array_1.uniq.flatten.size = 1
    if array_1[0][0] != array_2[0][0]
        puts array_even.size - array_2[0][1]
    else
        puts array_even.size - array_2[1][1]
    end
elsif array_2.uniq.flatten.size = 1
    if array_2[0][0] != array_1[0][0]
        puts array_odd.size - array_1[0][1]
    else
        puts array_odd.size - array_1[1][1]
    end
else
    if array_1[0][0] != array_2[0][0]
        puts (array_odd.size - array_1[0][1]) + (array_even.size - array_2[0][1])
    else
        if array_1[0][1] - array_1[1][1] >= array_2[0][1] - array_2[1][1]
            puts (array_odd.size - array_1[0][1]) + (array_even.size - array_2[1][1])
        else
            puts (array_odd.size - array_1[1][1]) + (array_even.size - array_2[0][1])
        end
    end
end