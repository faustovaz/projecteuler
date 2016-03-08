# *****************************************************************************
# * Project Euler - Problem 5
#
# 2520 is the smallest number that can be divided by each of the numbers from
# 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?
#
# ****************************************************************************/

require File.expand_path '../lib/generators'
include Generators

dividors = (1..20).to_a
puts (2..Float::INFINITY).lazy.find{ |num|
  dividors.all?{ |dividor|
    (num.modulo dividor).zero?
  }
}
