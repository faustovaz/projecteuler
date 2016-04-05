require 'minitest/autorun'
require File.expand_path '../lib/number_in_full'

describe "Number in full" do
  it "should get a single number in full" do
    1.in_full.must_equal "one"
  end
end
