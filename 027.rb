require File.expand_path 'lib/generators'

include Generators



quadratic_form = lambda{ |var, a, b|
    (var ** 2) + (a * var) + b
}

size_of_primes = lambda{ |var, a, b|
  primes = prime_numbers_generator.take_while{ |prime|
    prime < quadratic_form.call(var, a, b) + 1
  }
  (0..var).map{ |n| quadratic_form.call n, a, b }.select{ |n|
    primes.include? n
  }.size
}


#first given example
raise "This is wrooong" unless size_of_primes.call(39, 1, 41).eql? 40

#second given example
raise "This is wrooong" unless size_of_primes.call(79, -79, 1601).eql? 80
