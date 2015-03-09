#!/usr/bin/ruby
# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num)
  return (num.to_s.reverse == num.to_s) ? true : false
end

list1 = Array(1..999).reverse!
list2 = Array(1..999).reverse!

palindromes=[]

list1.each {|i|
  list2.each {|j|
    if palindrome?(i*j)
      palindromes.push(i*j)
    end
  }
}

puts palindromes.sort{|a,b| a <=> b }.last

exit 0
