n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i).sort.reverse

p ary
ans = 0

(n-2).times do |i|
	a = ary.bsearch_index{|x| ary[i] >= ary[i+1] + x}
	puts a
	if a != nil
		ans += ary[0..a].size
	else
		ans += ary[0..-1].size
		puts "ok"
	end
end

puts ans