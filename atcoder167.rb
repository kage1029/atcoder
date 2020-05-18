n, m, x = gets.split(" ").map(&:to_i)
ary = []
n.times {ary << gets.split(" ").map(&:to_i)}

ary_bit = [0, 1].repeated_permutation(n).to_a
ans = 12 * 100001

ary_bit.each {|y|
  ary_sum = Array.new(m+1,0)
  n.times {|i|
    if y[i] == 1
      n.times {|j|
        ary_sum[j] += ary[i][j]
      }
    end
    if ary_sum[1..-1].all? {|y| y >= x}
      ans = [ans, ary_sum[0]]
    end
  }
}

puts ans 
