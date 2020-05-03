n = gets.chomp.to_i
s = gets.chomp.to_s
cnt = 0

(n-2).times { |i|
  (n-(1+i)).times { |j|
    (n-(i+j)).times { |k|
      if s[i] != s[i+j] && s[i+j] != s[i+j+k] && s[i+j+k] != s[i]
        if k - j != 0
          cnt += 1
        end
      end
    }
  }
}

puts cnt