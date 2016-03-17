#Problem 14

for_even_numbers = lambda{ |number|
  (number / 2).to_i
}

for_odd_numbers = lambda{ |number|
  ((3 * number) + 1).to_i
}

calculate_sequence_size = lambda{ |number|
   sequence = 0
  while(number != 1) do
    number = (number.even?) ? for_even_numbers.call(number)
                            : for_odd_numbers.call(number)
    sequence +=1
  end
  sequence
}

p lambda{
  biggest_sequence = [0,0]
  (1..1_000_000).each{ |number|
    sequence = calculate_sequence_size.call number
    biggest_sequence = [number, sequence] if sequence > biggest_sequence.last
  }
  biggest_sequence
}.call
