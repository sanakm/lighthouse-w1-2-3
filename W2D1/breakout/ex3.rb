begin
  puts "Enter a numerator: "
  num = gets.chomp.to_i
  puts "Enter a denominator: "
  den = gets.chomp.to_i
  frac = num / den
  puts frac
rescue ZeroDivisionError => e
  puts e.message
end
