require 'minitest/autorun'
require File.expand_path '../lib/utils.rb'

include Utils

describe "Utils" do

  describe "Triplet" do
    it "should validate a pythagorean triplet" do
      triplet?([3,4,5]).must_equal true
    end
  end

  describe  "Number in full" do
    it "should write a single number in full" do
      number_in_full(3).must_equal "three"
    end
  end

end
