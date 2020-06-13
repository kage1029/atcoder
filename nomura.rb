s = gets.chomp.to_s
if s.include?("?")
  puts s.gsub!("?","D")
else
  puts s
end
