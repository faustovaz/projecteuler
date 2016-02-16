module Utils
  def triplet?(arr)
    return false if arr.size != 3
    (arr.first ** 2) + (arr[1] ** 2) == (arr.last ** 2)
  end
end
