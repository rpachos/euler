#!/usr/bin/ruby
# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10 001st prime number?
require_relative 'shared'
n=0
prime_count=0
while prime_count <= 10_000
  n += 1
  if Shared.is_prime?(n)
    prime_count += 1
  end
end

puts n
