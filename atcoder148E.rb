n = gets.chomp.to_i
div = 5
ans = 0

if n.odd?
    puts 0
    exit
else
    while  n > div
        # f(N)では1つ飛ばしの数をかけていくため、2で割って半分にする
        ans += n/(div*2)
        div *= 5
    end
    puts ans
end
