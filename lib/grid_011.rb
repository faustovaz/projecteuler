module Grid
  def getAllAdjacentsFrom(grid)
    dimension = get_dimension_of grid
    for row in 0..(dimension.size - 1)
      for column in 0..(dimension.first.size - 1)

      end
    end
  end

  def get_dimension_of(grid)
    return [grid.size, grid.first.size]
  end
end
