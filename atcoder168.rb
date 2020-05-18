a, b, h, m = gets.split(" ").map(&:to_i)

# 余弦定理で求める
puts Math.sqrt(a**2 + b**2 - 2*a*b * Math.cos((h*60-m*11).abs / 360.0 * Math::PI))