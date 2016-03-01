require 'minitest/autorun'
require File.expand_path '../lib/matrix.rb'

describe 'Matrix' do

  it 'should return all adjacent combination of the matrix' do
    matrix = Matrix.new [[1,2,3], [1,2,3]]
    matrix.adjacents_numbers_of(0,0,2).must_equal [[1,2], [1,1]]
  end

end
