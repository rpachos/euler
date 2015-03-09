#!/usr/bin/ruby
# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?

def find_factors(num)
  factors = []
  for i in 2..num-1
    # i divides num evenly, it's a factor
    if num % i == 0
      result = num / i
      factors.concat(find_factors(i))
      factors.concat(find_factors(result))
      return factors
    end
  end
  return [ num ]
end

factors = find_factors(600851475143)
#factors = find_factors(13195)
puts factors.sort.last

