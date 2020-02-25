# Your code here!
M = 10**9+7
def square(n, m, a)
    return 1 if m == 0
    x = square(n, m/2, a)**2 % a
    x *= n if m % 2 == 1
    return x % a
end
def hoge(num, except)
    x, y = 1, 1
    except.times do |i|
        x *= num - i
        x %= M
        y *= i+1
        y %= M
    end
    x * square(y, M-2, M) % M
end
 
num, a, b= gets.chop.split.map(&:to_i)
all = square(2, num, M) 
all -= 1
ca = M-hoge(num, a)
cb = M-hoge(num, b)
p (all + ca + cb) % M