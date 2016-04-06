#Problem 17

require File.expand_path 'lib/number_in_full'

p (1..1000).map{ |number|
  number.in_full.gsub(' ', '').size
}.reduce(:+)
