

obj = "hello"
case obj.class
when String
  p "It is a string"
when Fixnum
  p "It is a number"
else
  p "It is not a string"
end

=> "It is a string"
