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

x = 600_851_475_143
puts prime_numbers_generator().each
