#!/usr/bin/env ruby
# Longest Collatz sequence
# Problem 14
# The following iterative sequence is defined for the set of positive integers:
# 
# n → n/2 (n is even)
# n → 3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.
#
# https://xkcd.com/710/

def collatz(n)
  sequence_length = 1
  while(n > 1)
    if n % 2 == 1
      n = (n*3 + 1)
    else
      n = (n/2)
    end
    sequence_length += 1
  end

  return sequence_length
end

max = 0
max_n = nil
for n in (1..999_999)
  len = collatz(n)
  if len > max
    max = len
    max_n = n
  end
end

puts max_n
