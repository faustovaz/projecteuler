# *****************************************************************************
# * Project Euler - Problem 4
#
# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.
#
# ****************************************************************************/

palindromes = []
999.downto(100).each { |x|
    found = 999.downto(100).lazy.find{ |j|
          (x * j).to_s.eql? (x * j).to_s.reverse
    }
    palindromes << (x * found) if found
}
puts palindromes.sort.last
