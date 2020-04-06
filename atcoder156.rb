require 'openssl'
n, a, b = gets.split(" ").map(&:to_i)
MOD = 10**9 + 7

# 累乗
def pow(base, b)
  ans = 1
  while b > 0 do
    d = b / 10
    m = b % 10
    ans *= base**m
    ans %= MOD
    base = base**10 % MOD
    b =  d
  end
  ans
end

# 組み合わせ
def C(a, b)
  if b == 0 || a == b
    return 1
  else
    b = a - b if a / 2 < b
    x = (a-b+1..a).inject(1){|res, i| res*i%MOD}
    y = (1..b).inject(1){|res, i| res*i%MOD}
    yn = OpenSSL::BN.new(y).mod_inverse(MOD)
    x*yn
  end
end

puts (pow(2, n) - 1 - (C(n, a) + C(n, b))) % MOD
