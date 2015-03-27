#!/usr/bin/ruby
# Largest prime factor
# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?
require_relative 'shared'

factors = Shared.find_factors(600851475143)
#factors = Shared.find_factors(13195)
puts factors.sort.last

