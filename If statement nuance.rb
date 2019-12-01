count = 10

#Option 1 and option 2 do the same thing, just written in different ways. 

#Option 1
if count > 10
  puts "count is greater than 10"
else
  puts "count is less than or equal to 10"
end

#Option 2
message = if count > 10
  "count is greater than 10"
else
  "count is less than or equal to 10"
end

puts message