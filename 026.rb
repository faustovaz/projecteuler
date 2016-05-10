require File.expand_path 'lib/generators'

include Generators


#https://en.wikipedia.org/wiki/Modular_exponentiation
modular_power = lambda{ |auxiliar, prime|
  ((10 ** auxiliar).modulo prime)
}

primes = prime_numbers_generator.take_while{ |prime| prime < 1000 }.reverse

#https://en.wikipedia.org/wiki/Fermat's_little_theorem
primes.each{ |prime|
  auxiliar = 1
  while not modular_power.call(auxiliar, prime).eql? 1 do auxiliar+=1 end
  if (prime - 1).eql? auxiliar
    puts prime
    break
  end
}
