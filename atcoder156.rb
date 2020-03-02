# Your code here!
M = 10**9+7
def square(n, m, a)
    return 1 if m == 0
    x = square(n, m/2, a)**2 % a
    x *= n if m % 2 == 1
    return x % a
end

def rec(n, p, m)
    return 1 if p == 0
    return (n * rec(n, p - 1, m)) % m if p % 2 != 0
    (rec(n, p / 2, m) ** 2) % m
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

mod = (1e9 + 7).to_i
 
def combination(n, r, m)
  x = ((n - r + 1)..n).to_a.inject(1) { |acc, a| acc * a % m }
  y = (1..r).to_a.inject(1) { |acc, a| acc * a % m }
  (x * rec(y, m - 2, m)) % m
end
 
n, a, b = gets.chomp.split(' ').map(&:to_i)
arr = [combination(n, a, mod), combination(n, b, mod), 1]
result = arr.inject(rec(2, n, mod)) do |acc, x|
  acc = acc - x
  acc >= 0 ? acc : acc + mod
end
puts result


MOD = 1000000007
 
class Integer
  def factorial
    # 階乗 n!
    return 1 if self == 0
    (1..self).inject{|result,item|result * item % MOD}
  end
 
  def permutation(r)
    # 順列 nPr
    return 1 if self == 0
    s = self - r + 1
    (s..self).inject{|result,item|result * item % MOD}
  end
 
  def combination(r)
    r = [r, self - r].min
    return self if r == 1
    return 1 if r == 0
    self.permutation(r) * (r.factorial.inverse) % MOD
  end
 
  # aのn乗
  def power(n)
    res = 1
    a = self
    while (n > 0)
      if n.odd?
        res = (res * a) % MOD
      end
      a = a * a % MOD
      n >>= 1 # n / 2
    end
    return res
  end
 
  def inverse
    # 逆元 a^{-1} mod を計算する
    return self.power(MOD-2)
  end
end
 
 
str = gets
nab = str.chomp.split(" ").map(&:to_i)
n = nab[0]
a = nab[1]
b = nab[2]
 
# 0本のときは花束にならないので-1
all = 2.power(n) - 1
rem1 = n.combination(a)
rem2 = n.combination(b)
total = (all - rem1 - rem2) % MOD
p total
MOD = 1000000007

class Integer
  def factorial
    # 階乗 n!
    return 1 if self == 0
    (1..self).inject{|result,item|result * item % MOD}
  end

  def permutation(r)
    # 順列 nPr
    return 1 if self == 0
    s = self - r + 1
    (s..self).inject{|result,item|result * item % MOD}
  end

  def combination(r)
    r = [r, self - r].min
    return self if r == 1
    return 1 if r == 0
    self.permutation(r) * (r.factorial.inverse) % MOD
  end

  # aのn乗
  def power(n)
    res = 1
    a = self
    while (n > 0)
      if n.odd?
        res = (res * a) % MOD
      end
      a = a * a % MOD
      n >>= 1 # n / 2
    end
    return res
  end

  def inverse
    # 逆元 a^{-1} mod を計算する
    return self.power(MOD-2)
  end
end


str = gets
nab = str.chomp.split(" ").map(&:to_i)
n = nab[0]
a = nab[1]
b = nab[2]

# 0本のときは花束にならないので-1
all = 2.power(n) - 1
rem1 = n.combination(a)
rem2 = n.combination(b)
total = (all - rem1 - rem2) % MOD
p total