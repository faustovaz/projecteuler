

digit_powers = lambda{ |power, ranger|
  ranger.select{ |n|
    n.to_s.split("").map(&:to_i).reduce(0){ |sum, digit|
      sum + digit ** power
    }.eql? n
  }
}

p digit_powers.call(4, (1_000..9_999)).reduce(:+)
p digit_powers.call(5, (2..355000)).reduce(:+)

p self.class
