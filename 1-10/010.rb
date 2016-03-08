# *****************************************************************************
# * Project Euler - Problem 10
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
# ****************************************************************************/

require File.expand_path '../lib/generators'
include Generators

p prime_numbers_generator.take_while{ |prime|
  prime < 2_000_000
}.reduce(:+)
