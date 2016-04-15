triangle =
"""
3
7 4
2 4 6
8 5 9 3
"""
matrix = triangle.split("\n")
          .map(&:split)
          .select{ |line| not line.empty? }
          .map{ |array| array.map(&:to_i) }

for i in (matrix.size - 2).downto 0 do
  for j in 0..(matrix[i].size - 1) do
    matrix[i][j] = [ matrix[i][j] + matrix[i+1][j],
                      matrix[i][j] + matrix[i+1][j+1] ].max
  end
end
p matrix[0][0]
