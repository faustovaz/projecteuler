#!/usr/bin/env ruby

# *****************************************************************************
# * Project Euler - Problem 3
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
#
# ****************************************************************************/

require File.expand_path 'lib/generators'
include Generators
require 'set'

class Fixnum
  def factors
    factors = Set.new
    primes = prime_numbers_generator
    number = self
    while number > 1 do
      if (number.modulo primes.peek).zero?
        number = number / primes.peek
        factors << primes.peek
      else
        primes.next
      end
    end
    factors.to_a
  end
end

puts 600_851_475_143.factors.last

#More function way (need to improve)
prime_numbers_generator.take_while{ |p|
  p < sqrt(600_851_475_143)
}.select { |f|
  (600_851_475_143.modulo f).zero?
}.last





#6857
