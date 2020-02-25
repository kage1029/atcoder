n, k = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

if ary.inject(:+) < n
    puts 0
    exit
elsif ary.inject(:+) == n
    puts 1
    exit
end

injection = Array.new(1,0)
ary.each do |x|
    injection << injection[-1] + x
end

span = injection.size
cnt = 0
