module Shared

  def Shared.find_factors(num)
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

  def Shared.is_prime?(num)
    # check three and under
    return num > 1 if num <=3
    # eliminate all multiples of two and three
    return false if num % 2 == 0 || num % 3 == 0
   
    i = 5
    # only need to check factors up to square root of num
    while i*i <= num 
      # starting with 5 and 7 check if multiples of i and i+2 divide evenly
      return false if (num % i == 0 || num % (i + 2) == 0)

      # increment by 6 since we can skip over even numbers, factors of 3 and i+2
      i += 6
    end
   
    # if we made it past the square root without a hit, it's prime
    return true	
  end
end

class Integer
  def factorial
    if self == 1
      return self
    else
      return self * (self - 1).factorial
    end
  end
end

