require 'minitest/autorun'
require File.expand_path '../lib/matrix.rb'

describe 'Matrix' do
  describe 'adjacents numbers from the rights of a given element' do
    before do
      @matrix = Matrix.new [
        [1,2,3,4,5,6,7,8],
        [1,2,3,4,5,6,7,8],
        [1,2,3,4,5,6,7,8]
      ]
    end

    it 'should return all adjacent numbers from the right' do
      @matrix.get_adjacents_from_the_right(0,0,2).must_equal [1,2,3]
    end

    it 'shoud return an empty array' do
      @matrix.get_adjacents_from_the_right(0,1,7).must_be :empty?
    end

    it 'should return the only one adjacent number' do
      @matrix.get_adjacents_from_the_right(1,2,0).must_equal [3]
    end

    it 'shoud return an empty array when given an invalid input' do
      @matrix.get_adjacents_from_the_right(3,2,3).must_be :empty?
    end
  end
end
