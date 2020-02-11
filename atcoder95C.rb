a, b, c, x, y = gets.split(" ").map(&:to_i)
price = 0

if (a+b)/2 >= c
	if x >= y
		price += y*c*2 
		if a >= c*2
			price += (x-y)*c*2
		else
			price += (x-y)*a
		end
	else
		price += x*c*2
		if b >= c*2
			price += (y-x)*c*2
		else
			price += (y-x)*b
		end
	end
else
	price = x*a + y*b
end

puts price
