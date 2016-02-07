4.times do
  puts "Hello"
end

=> "Hello"
=> "Hello"
=> "Hello"
=> "Hello"

# Counting
count = 0
5.times do
  count += 1
  puts "Count = " + count.to_s
end

=> "Count = 1"
=> "Count = 2"
=> "Count = 3"
=> "Count = 4"
=> "Count = 5"

# Counting backwards
count = 10
10.times do
  count -= 1
  puts count
end

=> 9
=> 8
=> 7
=> 6
=> 5
=> 4
=> 3
=> 2
=> 1
=> 0

# while

i = 0
num = 5

while i < num  do
   puts "Inside the loop i = #{i}"
   i +=1
end

=> "Inside the loop i = 0"
=> "Inside the loop i = 1"
=> "Inside the loop i = 2"
=> "Inside the loop i = 3"
=> "Inside the loop i = 4"

# while with begin

i = 0
num = 5
begin
  puts "Inside the loop i = #{i}"
   i +=1
end while i < num

=> "Inside the loop i = 0"
=> "Inside the loop i = 1"
=> "Inside the loop i = 2"
=> "Inside the loop i = 3"
=> "Inside the loop i = 4"

# until

i = 0
num = 2

until i > num  do
  puts "Inside the loop i = #{i}"
   i +=1;
end

=> "Inside the loop i = 0"
=> "Inside the loop i = 1"

# for loops

for i in 0..2
   puts "Value of local variable is #{i}"
end

=> "Value of local variable is 0"
=> "Value of local variable is 1"

# each

(0..2).each do |i|
   puts "Value of local variable is #{i}"
end

=> "Value of local variable is 0"
=> "Value of local variable is 1"

# break

for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end

=> "Value of local variable is 0"
=> "Value of local variable is 1"
=> "Value of local variable is 2"

# next

for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end


=> "Value of local variable is 2"
=> "Value of local variable is 3"
=> "Value of local variable is 4"
=> "Value of local variable is 5"

# redo

for i in 0..5
   if i < 2 then
      puts "Value of local variable is #{i}"
      redo
   end
end

# This will produce the following result
# and will go in an infinite loop:

=> "Value of local variable is 0"
=> "Value of local variable is 0"
............................

# retry

for i in 1..5
   retry if  i > 2
   puts "Value of local variable is #{i}"
end

# This will produce the following result
# and will go in an infinite loop:

=> "Value of local variable is 1"
=> "Value of local variable is 2"
=> "Value of local variable is 1"
=> "Value of local variable is 2"
=> "Value of local variable is 1"
=> "Value of local variable is 2"
............................
