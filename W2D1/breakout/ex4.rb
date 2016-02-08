begin
  raise ZeroDivisionError, "Hey dude I don't like zero" #NameError
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
