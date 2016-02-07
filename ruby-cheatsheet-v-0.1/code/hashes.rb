
# old hand
grades = { "Jane Doe" => 10, "Jim Doe" => 6 }
puts

=> { "Jane Doe" => 10, "Jim Doe" => 6 }

# new hand using symbols
options = { font_size: 10, font_family: "Arial" }
puts

=> { font_size: 10, font_family: "Arial" }

# assign values to keys of a hash
grades = Hash.new
grades["score"] = 9
puts grades["score"]

=> 9
