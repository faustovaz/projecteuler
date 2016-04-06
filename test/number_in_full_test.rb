require 'minitest/autorun'
require File.expand_path '../lib/number_in_full'

describe "Number in full" do
  it "should get a single number in full" do
    1.in_full.must_equal "one"
    10.in_full.must_equal "ten"
  end

  it "should get two digit number in full" do
    18.in_full.must_equal "eighteen"
    24.in_full.must_equal "twenty four"
    53.in_full.must_equal "fifty three"
    99.in_full.must_equal "ninety nine"
  end

  it "should get three digit number in full" do
    157.in_full.must_equal "one hundred and fifty seven"
    623.in_full.must_equal "six hundred and twenty three"
    832.in_full.must_equal "eight hundred and thirty two"
    901.in_full.must_equal "nine hundred and one"
    509.in_full.must_equal "five hundred and nine"
    300.in_full.must_equal "three hundred"
  end

end
