begin
  puts "Enter a numerator: "
  num = gets.chomp.to_i
  puts "Enter a denominator: "
  den = gets.chomp.to_i
  frac = num / den
  puts frac
rescue ZeroDivisionError => e
  puts e.message
  puts e.backtrace.inspect
  puts e.class
  puts e.class.superclass
  puts e.class.superclass.superclass
  puts e.class.superclass.superclass.superclass
  puts e.class.superclass.superclass.superclass.superclass
  p e.class.superclass.superclass.superclass.superclass.superclass #End of heirarchy
end
