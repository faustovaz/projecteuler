#Heap's algorithm for permutation
#Trying Heap's algorithm to solve problem 24

class Heaps
  attr_reader :permutations

  def initialize
    @permutations = []
  end

  def permute(array, size)
    @permutations << array if size.eql? 1
    for i in (0..size - 1) do
      permute(array, size - 1)
      array[0], array[size - 1] = array[size - 1], array[0] if size.odd?
      array[i], array[size - 1] = array[size - 1], array[i] if size.even?
    end
  end
end
