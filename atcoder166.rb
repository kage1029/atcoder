n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
cnt = 0

n.times {|i|
  (n-(i+1)).times {|j|
    if j + 1 == ary[i+j+1] + ary[i]
      cnt += 1
    end
  }
}

puts cnt
