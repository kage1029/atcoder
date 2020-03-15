n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i).sort.reverse.group_by(&:itself).map{ |key, value| [key, value.size] }

h = 0
w = 0

ary.size.times do |i|
  if h == 0 && ary[i][1] >= 4 
    puts ary[i][0] ** 2
    exit
  end

  if h == 0 && ary[i][1] >= 2
    h = ary[i][0]
  elsif w == 0 && ary[i][1] >= 2
    w = ary[i][0]
  end

  if h != 0 && w != 0
    puts h * w
    exit
  end
end

puts 0