# *****************************************************************************
# * Project Euler - Problem 7
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13,
#  we can see that the 6th prime is 13.
#  What is the 10 001st prime number?
# ****************************************************************************/
require File.expand_path 'lib/generators'
include Generators

puts prime_numbers_generator.take(10_001).last
