
generate_clock_wise_diagonals = lambda{ |n|
  diagonal_x_aux = [2,6]
  diagonal_y_aux = [4,8]

  diagonal_x = [1]
  diagonal_y = [1]

  while(diagonal_x_aux.size <= n) do
    diagonal_x.insert(0, diagonal_x_aux.first + diagonal_x.first)
    diagonal_x.push(diagonal_x_aux.last + diagonal_x.last)

    diagonal_y.insert(0, diagonal_y_aux.first + diagonal_y.first)
    diagonal_y.push(diagonal_y_aux.last + diagonal_y.last)

    diagonal_x_aux.insert(0, diagonal_x_aux.first + 8)
    diagonal_x_aux.push(diagonal_x_aux.last + 8)

    diagonal_y_aux.insert(0, diagonal_y_aux.first + 8)
    diagonal_y_aux.push(diagonal_y_aux.last + 8)
  end
  diagonal_x.concat(diagonal_y)
}

#given example
puts generate_clock_wise_diagonals.call(5).reduce(:+) - 1

#solution
puts generate_clock_wise_diagonals.call(1001).reduce(:+) - 1
