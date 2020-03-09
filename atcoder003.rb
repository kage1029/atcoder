s = gets.chomp.to_s
t = gets.chomp.to_s
ary = ["a", "t", "c", "o", "d", "e", "r"]
 
s.size.times do |i|
  if s[i] == t[i]
    next
  elsif s[i] == "@"
    if ([t[i]] & ary).size != 0
      next
    else
      puts "You will lose"
      exit
    end
  elsif t[i] == "@"
    if ([s[i]] & ary).size != 0
      next
    else
      puts "You will lose"
      exit
    end
  else
    puts "You will lose"
    exit
  end
end
 
puts "You can win"