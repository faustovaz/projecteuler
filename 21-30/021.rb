#Amicable Numbers

require File.expand_path "../lib/refactoring"

divisors_sum = lambda{ |given_number|
  given_number.divisors.sort.reverse.drop(1).reduce(:+)
}

p (1..10000).select{ |number|
  not divisors_sum.call(number).eql? number and
    divisors_sum.call(divisors_sum.call number).eql? number
}.reduce(:+)
