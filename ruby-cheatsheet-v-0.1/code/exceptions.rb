

# Randon runtime error
begin
  raise "Hello I am a random runtime error"
rescue => e
  p e.message
  p e.backtrace
end

# Rescuing Exceptions Inside Methods
def some_method
  p 'Hello method'
  raise
  p 'Bye method'
rescue
  p 'Rescuing exceptions'
end
some_method

# Raising standard errors
begin
  raise ZeroDivisionError, "zero division error"
rescue ZeroDivisionError => e
  p e.message
  p e.backtrace
end

# Custom errors
class MyCrazyException < Exception
end

raise MyCrazyException, "I am a crazy new exception"
