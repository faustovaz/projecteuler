
def max_path_sum(triangle)
  for i in (triangle.size - 2).downto 0 do
    for j in 0..(triangle[i].size - 1) do
      triangle[i][j] = [ triangle[i][j] + triangle[i+1][j],
                        triangle[i][j] + triangle[i+1][j+1] ].max
    end
  end
  triangle.first.first
end


given_example =
"""
3
7 4
2 4 6
8 5 9 3
""".split("\n")
    .map(&:split)
    .select{ |line| not line.empty? }
    .map{ |array| array.map(&:to_i) }

raise "oops, this is wrong" unless max_path_sum(given_example) == 23
