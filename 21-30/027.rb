require File.expand_path '../lib/generators'

include Generators



quadratic_form = lambda{ |var, a, b|
    (var ** 2) + (a * var) + b
}

it_generates_prime = lambda{ |var, a, b|
  value = quadratic_form.call(var, a, b)
  primes = prime_numbers_generator.take_while{ |prime| prime < value + 1 }
  primes.include? value
}

size_of_primes = lambda{ |a, b|
  length = 0
  while it_generates_prime.call(length, a, b) do length += 1 end
  length
}

#first given example
raise "This is wrooong" unless size_of_primes.call(1, 41).eql? 40

#second given example
raise "This is wrooong" unless size_of_primes.call(-79, 1601).eql? 80

largerst_size = 0
largerst_product = 0
(-999..1000).each{ |a|
  (-999..1000).each{ |b|
    length = size_of_primes.call(a,b)
    largerst_size, largerst_product = length, (a * b) if length > largerst_size
  }
}
p largerst_size
p largerst_product
