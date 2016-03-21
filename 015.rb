def run_forest_run(row, column, matrix)
  return 0 if matrix[row].nil? || matrix[row][column].nil?
  return 1 if (matrix.size - 1) == row and (matrix[row].size - 1) == column
  return run_forest_run(row + 1, column, matrix) +
          run_forest_run(row, column + 1, matrix)
end

def teste(number)
  return 1 if number == 1
  return number + teste(number - 1)
end

puts run_forest_run(0, 0, [[0] * 3] * 3)
