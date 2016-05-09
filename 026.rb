require File.expand_path 'lib/generators'

include Generators

#https://en.wikipedia.org/wiki/Fermat's_little_theorem
fermat_theorem = lambda{ |auxiliar, prime|
  ((10 ** auxiliar).modulo prime)
}

primes = prime_numbers_generator.take_while{ |prime| prime < 1000 }.reverse
primes.each{ |prime|
  auxiliar = 1
  while not fermat_theorem.call(auxiliar, prime).eql? 1 do auxiliar+=1 end
  break if (prime - 1).eql? auxiliar
}
