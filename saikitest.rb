def factorial(n)
  return 0 if n == 0
  return n + factorial(n - 1)
end

puts factorial(100)