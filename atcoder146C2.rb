a, b, x = gets.split(" ").map(&:to_i)

# bserchというメソッドを使うと二分探索ができて実行速度が小さくなる
ans = (1..10**9).bsearch do |i|
	a*i + b*(i.to_s.size) > x
end

if ans != nil
	puts ans -1 
else
	puts 1000000000
end
