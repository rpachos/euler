#!/usr/bin/env ruby
#Factorial digit sum
#Problem 20
#n! means n × (n − 1) × ... × 3 × 2 × 1
#
#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!
require_relative 'shared'

puts 100.factorial.to_s.chars.map {|digit| digit }.map {|char| char.to_i }.inject {|digit,sum| digit + sum }
