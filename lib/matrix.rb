class Matrix
  def initialize(arr)
    @matrix = arr
  end

  def all_adjacents_numbers_of(row, column, len)
    adjacents = []
    adjacents << get_adjacents_from_the_right(row, column, len)
    adjacents << get_adjacents_from_the_left(row, column, len)
    adjacents << get_adjacents_from_up(row, column, len)
    adjacents << get_adjacents_from_down(row, column, len)
    adjacents << get_adjacents_from_up_right(row, column, len)
    adjacents << get_adjacents_from_down_right(row, column, len)
    adjacents << get_adjacents_from_up_left(row, column, len)
    adjacents << get_adjacents_from_down_left(row, column, len)
    adjacents
  end

  def get_adjacents_from_the_right(row, column, len)
    return [] if @matrix[row].nil? or
                  @matrix[row][column].nil? or
                  @matrix[row].slice(column, len + 1).size != len + 1
    @matrix[row].slice(column, len + 1)
  end

  def get_adjacents_from_the_left(row, column, len)
    return [] if @matrix[row].nil? or
                  @matrix[row][column].nil? or
                  (column - len) < 0
    @matrix[row].slice((column - len), len + 1)
  end

end
