require_relative 'generators'

include Generators

class Fixnum
  def refactor
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
