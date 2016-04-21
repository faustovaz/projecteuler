require_relative 'generators'

include Generators
include Math

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
    divisors
  end

  def perfect?
    self.divisors.sort.reverse.drop(1).reduce(:+).eql? self
  end

  def abundant?
    self.divisors.sort.reverse.drop(1).reduce(:+). > self
  end

  def deficient?
    self.divisors.sort.reverse.drop(1).reduce(:+) < self
  end

end
