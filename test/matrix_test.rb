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
end
