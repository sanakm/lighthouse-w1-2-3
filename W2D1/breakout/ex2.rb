
begin
  puts "Enter a numerator: "
  num = gets.chomp.to_i
  puts "Enter a denominator: "
  den = gets.chomp.to_i
  frac = num / den
  puts frac
rescue
  puts $!.message
  puts $!.backtrace.inspect
  puts $!.class
  puts $!.class.superclass
  puts $!.class.superclass.superclass
  puts $!.class.superclass.superclass.superclass
  puts $!.class.superclass.superclass.superclass.superclass
  p $!.class.superclass.superclass.superclass.superclass.superclass #End of heirarchy
end
