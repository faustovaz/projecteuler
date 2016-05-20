require 'set'

get_distinct_terms = lambda { |n|
  arr = []
  (2..n).each{ |a|
    (2..n).each{ |b|
      arr << a ** b
    }
  }
  Set.new arr
}


#given example
raise "totally wrong" unless get_distinct_terms.call(5).size.eql? 15

p get_distinct_terms.call(100).size
