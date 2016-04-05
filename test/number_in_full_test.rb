require 'minitest/autorun'
require File.expand_path '../lib/number_in_full'

describe "Number in full" do
  it "should get a single number in full" do
    1.in_full.must_equal "one"
    10.in_full.must_equal "ten"
  end

  it "should get two digit number in full" do
    24.in_full.must_equal "twenty four"
    53.in_full.must_equal "fifty three"
    99.in_full.must_equal "ninety nine"
  end

end
