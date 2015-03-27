#!/usr/bin/ruby
# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# 
# Find the sum of all the primes below two million.
require_relative 'shared'

max = 2000000
sum = Array(1..max)
  .select {|num| prime = Shared.is_prime?(num) }
  .inject {|sum,prime| sum + prime }

puts sum
