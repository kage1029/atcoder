n, k = gets.split(" ").map(&:to_i)

if n <= k
    a = n
else
    a = k
end

i = 1
ans = 0

a.times do
    b = 0
    while i < k
        i *= 2
        b += 1
    end
    ans += Rational(1, n)*(1/2)**b
    i += 1
    puts ans
end

puts ans.to_f
