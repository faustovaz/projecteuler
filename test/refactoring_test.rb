require 'minitest/autorun'
require_relative '../lib/refactoring.rb'

describe "My Fixnum" do
  describe 'Number Refactoring' do
    it 'should refactor 25' do
      25.refactor.must_equal [5,5]
    end

    it 'should refactor a prime number' do
      97.refactor.must_equal [97]
    end

    it 'should refactor a large number' do
      1024.refactor.must_equal [2,2,2,2,2,2,2,2,2,2]
    end

    it 'should refactor any number' do
      15.refactor.must_equal [3,5]
      27.refactor.must_equal [3,3,3]
      50.refactor.must_equal [2,5,5]
    end
  end

  describe 'Perfect numbers' do
    it 'should identify perfect numbers' do
      6.perfect?.must_equal true
      28.perfect?.must_equal true
    end

    it 'should identify abumdant numbers' do
      12.abundant?.must_equal true
      20.abundant?.must_equal true
    end

    it 'should identify deficient numbers' do
      15.deficient?.must_equal true
      22.deficient?.must_equal true
    end
  end
end
