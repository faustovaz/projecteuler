# Problem 15
# Find how many paths to get to the bottom right corner
# Too slow in Ruby... _15.java is faster

class Runner
  def initialize(matrix = [[0] * 3] * 3)
    @matrix = matrix
    @cache = {}
  end

  def run_forest_run(row, column)
    key = "#{row},#{column}".to_sym
    return 0 if @matrix[row].nil? || @matrix[row][column].nil?
    return 1 if (@matrix.size - 1) == row and (@matrix[row].size - 1) == column
    return @cache[key] if @cache.has_key? key
    result = run_forest_run(row, column + 1) +
                run_forest_run(row + 1, column)
    @cache.store key, result
    result
  end
end

r = Runner.new [[0] * 20] * 20
p r.run_forest_run(0,0)
