require 'minitest/autorun'
require File.expand_path '../lib/generators'

include Generators

describe "Generators" do
  describe "Prime Numbers generator" do
    it "should generate the 5 first prime numbers" do
      primes = prime_numbers_generator
      primes.take(5).must_equal [2,3,5,7,11]
    end
  end

  describe "Fibbonaci generator" do
    it "should generate the 10 first numbers of fibbonaci serie" do
      fibbonaci = fibbonaci_generator
      fibbonaci.take(10).must_equal [1,2,3,5,8,13,21,34,55,89]
    end
  end

  describe "Pythagorean triplet generator" do
    it "should generate the first valid Pythagorean triplet" do
      triplet_generator = pythagorean_triplet_generator
      a = triplet_generator.next
    end
  end

end
