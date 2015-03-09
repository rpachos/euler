#!/usr/bin/ruby

def next_fibonacci(num1, num2)
  return num1 + num2
end

num1 = 1
num2 = 1
counter = 0
next_fib = num1
while next_fib < 4_000_000
  if next_fib % 2 == 0
    counter += next_fib
    # puts "#{next_fib}:#{counter}"
  end

  next_fib = next_fibonacci(num1, num2);
  num1 = num2
  num2 = next_fib
end

puts counter
