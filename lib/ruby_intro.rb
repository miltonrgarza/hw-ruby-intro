# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  arr.max(2).inject(0, :+)
end

def sum_to_n? arr, n
  !!(arr.combination(2).detect{|a, b| a + b == n})
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  !!(s[0] =~ /[^aeiou\W]/i)
end

def binary_multiple_of_4? s
  
  if (s.empty? || s =~ /[^01]/)
    return false
  else
    !!(s.to_i % 4 == 0)
  end
  
end

# Part 3

class BookInStock

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    
    if (isbn.empty? || price <= 0)
      raise ArgumentError 
    end
    
    @isbn = isbn
    @price = Float(price)
    
  end
  
  def price_as_string
   return "$%.2f" % price
  end
  
end
