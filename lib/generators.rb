module Generators
  def prime_numbers_generator
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

  def pythagorean_triplet_generator
    Enumerator.new do |generator|
      (1..1_001).each do |a|
        (a..1_001).each do |b|
          (b..1_001).each do |c|
            generator.yield [a,b,c] if (a**2) + (b**2) == (c**2)
          end
        end
      end
    end
  end
end
