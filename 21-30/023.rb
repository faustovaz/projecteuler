require File.expand_path 'lib/refactoring'
require 'set'

abundants = (1..28123).select{ |number| number.abundant? }
sums = Set.new
abundants.each { |abundant|
  abundants.each { |another_abundant|
    sums << abundant + another_abundant
  }
}


p (1..28123).select{ |n|
  not sums.include? n
}.reduce(:+)
