class Matrix
  def initialize(arr)
    @matrix = arr
  end

  def size
    [@matrix.nil? ? 0 : @matrix.size, @matrix.size.nil? ? 0 : @matrix.first.size]
  end

  def all_adjacents(len)
    adjacents = []
    (0..size.first).each { |row|
      (0..size.last).each { |column|
        adjacents << all_adjacents_numbers_of(row, column, len)
      }
    }
    adjacents
  end

  def all_adjacents_numbers_of(row, column, len)
    adjacents = []
    adjacents << get_adjacents_from_above(row, column, len)
    adjacents << get_adjacents_from_above_right(row, column, len)
    adjacents << get_adjacents_from_the_right(row, column, len)
    adjacents << get_adjacents_from_bottom_right(row, column, len)
    adjacents << get_adjacents_from_bottom(row, column, len)
    adjacents << get_adjacents_from_bottom_left(row, column, len)
    adjacents << get_adjacents_from_the_left(row, column, len)
    adjacents << get_adjacents_from_above_left(row, column, len)
    adjacents
  end

  def get_adjacents_from_the_right(row, column, len)
    return [] if not exists?(row, column) or
                  @matrix[row].slice(column, len + 1).size != len + 1
    @matrix[row].slice(column, len + 1)
  end

  def get_adjacents_from_the_left(row, column, len)
    return [] if not exists?(row, column) or
                  (column - len) < 0
    @matrix[row].slice((column - len), len + 1)
  end

  def get_adjacents_from_above(row, column, len)
    transposed_matrix = Matrix.new transpose
    transposed_matrix.get_adjacents_from_the_left(column, row, len)
  end

  def get_adjacents_from_bottom(row, column, len)
    transposed_matrix = Matrix.new transpose
    transposed_matrix.get_adjacents_from_the_right(column, row, len)
  end

  def get_adjacents_from_above_right(row, column, len)
    return [] if not exists?(row, column) or
                  (row - len) < 0 or (column + len) >= size.last
    (0..len).map{ |index| @matrix[row - index][column + index] }
  end

  def get_adjacents_from_bottom_right(row, column, len)
    return [] if not exists?(row, column) or
                  (row + len) >= size.first or (column + len) >= size.last
    (0..len).map { |index| @matrix[row + index][column + index] }
  end

  def get_adjacents_from_bottom_left(row, column, len)
    return [] if not exists?(row, column) or
                  (row + len) >= size.first or (column - len) < 0
    (0..len).map { |index| @matrix[row + index][column - index] }
   end

   def get_adjacents_from_above_left(row, column, len)
     return [] if not exists?(row, column) or
                   (row - len) < 0 or (column - len) < 0
     (0..len).map { |index| @matrix[row - index][column - index] }
    end

  def transpose
    transposed = Array.new size.last
    transposed.each_index { |i| transposed[i] = Array.new size.first}
    @matrix.each_index{ |row|
      @matrix[row].each_index{ |column|
        transposed[column][row] = @matrix[row][column]
      }
    }
    transposed
  end

  def exists?(row, column)
    not @matrix[row].nil? and not @matrix[row][column].nil?
  end

end
