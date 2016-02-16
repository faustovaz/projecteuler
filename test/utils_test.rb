require 'minitest/autorun'
require File.expand_path '../lib/utils.rb'

include Utils

describe "Utils" do
  it "should validate a pythagorean triplet" do
    triplet?([3,4,5]).must_equal true
  end
end
