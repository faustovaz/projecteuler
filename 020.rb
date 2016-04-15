# Find the sum of the digits in the number 100! (100 factorial)

given_example = 10.downto(1)
                .reduce(:*)
                .to_s
                .split('')
                .map(&:to_i)
                .reduce(:+)

raise "That's wrong" unless given_example.eql? 27

p 100.downto(1)
  .reduce(:*)
  .to_s
  .split('')
  .map(&:to_i)
  .reduce(:+)
