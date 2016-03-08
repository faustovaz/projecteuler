#!/usr/bin/env ruby

# *****************************************************************************
# * Project Euler - Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
# ****************************************************************************/

require File.expand_path '../lib/generators'
include Generators
include Math

class Fixnum
  def factors
    factors = []
    primes = prime_numbers_generator
    number = self
    while number > 1 do
      if (number.modulo primes.peek).zero?
        number /= primes.peek
        factors << primes.peek
      else
        primes.next
      end
    end
    factors
  end
end

puts 600_851_475_143.factors.last

#Different version using ruby lazy feature
x = 600_851_475_143
puts prime_numbers_generator.lazy.take_while{ x > 1 }.select{ |n|
  a = x
  while x.modulo(n).zero? do
    x = x / n
  end
  a.modulo(n).zero?
}.to_a.last
