#!/usr/bin/ruby

counter = 0
for i in 1..999
  if ((i % 5 == 0) or (i % 3 == 0))
    counter += i
  end
end
puts counter
