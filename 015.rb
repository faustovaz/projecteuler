def run_forest_run(row, column, matrix = [[0] * 3] * 3)
  return 0 if matrix[row].nil? || matrix[row][column].nil?
  return 1 if (matrix.size - 1) == row and (matrix[row].size - 1) == column
  return run_forest_run(row + 1, column, matrix) +
          run_forest_run(row, column + 1, matrix)
end

puts run_forest_run(0, 0)
