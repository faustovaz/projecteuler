require 'minitest/autorun'
require File.expand_path '../lib/matrix.rb'

describe 'Matrix' do
  before do
    @matrix = Matrix.new [
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8],
      [1,2,3,4,5,6,7,8]
    ]
  end

  describe 'size' do
    it 'shoud have a size of 3,8' do
      @matrix.size.must_equal [3,8]
    end

    it 'should have a size of 1,1' do
      matrix = Matrix.new [[1]]
      matrix.size.must_equal [1,1]
    end
  end

  describe 'tranposed' do
    it 'should transpose the matrix' do
      @matrix.transpose.must_equal [
        [1,1,1],
        [2,2,2],
        [3,3,3],
        [4,4,4],
        [5,5,5],
        [6,6,6],
        [7,7,7],
        [8,8,8],
      ]
    end

    it 'should tranpose a quadratic matrix' do
      matrix = Matrix.new [
          [1,4],
          [3,5]
      ]
      matrix.transpose.must_equal [
        [1,3],
        [4,5]
      ]
    end
  end

  describe 'adjacents numbers from the rights of a given element' do
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

  describe 'adjacents numbers from the left of a given element' do
    it 'should get an empty array' do
      @matrix.get_adjacents_from_the_left(0,3,4).must_be :empty?
    end

    it 'should get all adjacents from the left' do
      @matrix.get_adjacents_from_the_left(0,3,3).must_equal [1,2,3,4]
    end

    it 'should get all number of a given row' do
      @matrix.get_adjacents_from_the_left(1,7,7).must_equal [1,2,3,4,5,6,7,8]
    end

    it 'shoud get just one adjacent number' do
      @matrix.get_adjacents_from_the_left(0,0,0).must_equal [1]
    end
  end

  describe 'adjacentes numbers above a given element' do
    it 'should get an empty array' do
      @matrix.get_adjacents_from_above(0,0,3).must_be :empty?
    end

    it 'should gel all adjacents numbers from above' do
      @matrix.get_adjacents_from_above(2,2,2).must_equal [3,3,3]
    end

    it 'should get an empty array given an element with no adjacent numbers' do
      @matrix.get_adjacents_from_above(0,0,3).must_be :empty?
    end
  end

  describe 'adjacents numbers below a given element' do
    it 'should get an ampy array' do
      @matrix.get_adjacents_from_bottom(2,2,1).must_be :empty?
    end

    it 'shoud get all adjacents number from below' do
      @matrix.get_adjacents_from_bottom(1,1,1).must_equal [2,2]
    end
  end

end
