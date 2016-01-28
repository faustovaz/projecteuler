module Generators
  def generate_prime_numbers
    Enumerator.new do |generator|
      primes = []
      counter = 2
      while true
        if primes.all?{ |prime| counter % prime != 0 }
          generator.yield counter
          primes << counter
        end
        counter += 1
      end
    end
  end

  def fibbonaci_generator
    Enumerator.new do |generator|
      a,b = 0,1
      while true
        generator.yield a + b
        a,b = b, a + b
      end
    end
  end
end
