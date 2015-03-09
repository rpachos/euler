#!/usr/bin/ruby
# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

top_number=20
multiple=top_number
found=0

while (not found == 1)
  puts multiple
  multiple += top_number
  for i in 2..top_number
    if multiple % i != 0
      break
    end
    if i == top_number
      found = 1
    end
  end
end

puts multiple

exit 0
