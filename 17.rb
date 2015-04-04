#!/usr/bin/env ruby
# Number letter counts
# Problem 17
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
# 
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
#NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

def english_number(num)
  atoms = {
    0 => '',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'hundred',
    1000 => 'thousand',
  }

  if num < 100 and atoms.key?(num)
    return atoms[num]
  else
    if num < 100
      return english_number((num/10)*10) + ' ' + english_number(num % 10) 
    elsif num < 1000
      tens = num / 100
      return english_number(tens) + ' ' + atoms[100] + ((num % 100 > 0) ? ' and ' + english_number(num % 100) : '')
    elsif num < 10000
      thousands = num / 1000
      return english_number(thousands) + ' ' + atoms[1000] + ' ' + english_number(num % 1000) 
    else
      return
    end
  end
end

#(1..1000).to_a.map {|number| puts english_number(number) }
puts (1..1000).to_a.map {|number| english_number(number).gsub(/[ ]/, '') }.join('').length()
