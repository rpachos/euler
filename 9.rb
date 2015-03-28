#!/usr/bin/env ruby
# Special Pythagorean triplet
# Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
a = 0
b = 1
c = 0

while (a + b + c <= 1000)
  a += 1
  while (a + b + c <= 1000)
    b += 1
    c = Math.sqrt(a ** 2 + b ** 2)
    if (a + b + c == 1000)
      puts a * b * c
    end
  end
  b = a + 1
end
