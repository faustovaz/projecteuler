#Problem 67
#Trying the same algorithm used in problem 18 with a
#bigger triangle

def max_path_sum(triangle)
  for i in (triangle.size - 2).downto 0 do
    for j in 0..(triangle[i].size - 1) do
      triangle[i][j] = [ triangle[i][j] + triangle[i+1][j],
                        triangle[i][j] + triangle[i+1][j+1] ].max
    end
  end
  triangle.first.first
end

triangle_file = File.open "p067_triangle.txt"
triangle = triangle_file.readlines
            .map{ |e| e.gsub("\n","").split(" ")}
            .map{ |array| array.map(&:to_i)}
p max_path_sum(triangle)
