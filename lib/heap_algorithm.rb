#Heap's algorithm for permutations
#Trying Heap's algorithm to solve problem 24
class Heaps

  def initialize
    @permutations = []
  end

  def permute(array)
    permute_rec(array, array.size)
    @permutations
  end

  private
  def permute_rec(array, size)
    @permutations << Array.new(array) if size.eql? 1
    for i in (0..(size - 1)) do
      permute_rec(array, size - 1)
      array[0], array[size - 1] = array[size - 1], array[0] if size.odd?
      array[i], array[size - 1] = array[size - 1], array[i] if size.even?
    end
  end

end
