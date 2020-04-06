a, b, x = gets.chomp.split.map(&:to_f)

if x > a**2 * b / 2
  puts (Math.atan((2 * (a**2 * b - x))/(a**3)) * 180)/Math::PI
else
  puts (Math.atan((a * b**2)/(2 * x)) * 180)/Math::PI 
end
