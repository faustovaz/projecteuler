require_relative 'generators'

include Generators
include Math
require 'set'

class Fixnum

  def refactor
    factors, primes, number = [], prime_numbers_generator, self
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

  def divisors
    divisors, number = [], self
    (1..(Math.sqrt number).to_i).each{ |n|
       divisors << n && divisors << (number / n).to_i if (number.modulo n).zero?
    }
    Set.new divisors
  end

  def perfect?
    return false if self.divisors.size <= 1
    self.divisors.sort.reverse.drop(1).reduce(:+).eql? self
  end

  def abundant?
    return false if self.divisors.size <= 1
    self.divisors.sort.reverse.drop(1).reduce(:+) > self
  end

  def deficient?
    return false if self.divisors.size <= 1
    self.divisors.sort.reverse.drop(1).reduce(:+) < self
  end
end
