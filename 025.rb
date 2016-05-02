#What is the index of the first term in the Fibonacci
#sequence to contain 1000 digits?

require File.expand_path 'lib/generators'
include Generators

#Given example:
raise "wrooong" if not (fibbonaci_generator.take(
      (fibbonaci_generator.take_while{ |fib| fib.to_s.size < 3 }.size + 1)
).size + 1).eql? 12
