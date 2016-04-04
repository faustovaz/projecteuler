module Utils

  @numbers = {  1 => "one", 2 => "two", 3 => "three", 4 => "four",
               5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine",
               10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen",
               14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
               17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
               20 => "twenty", 30 => "thirty", 50 => "fifty"}

  def triplet?(arr)
    return false if arr.size != 3
    (arr.first ** 2) + (arr[1] ** 2) == (arr.last ** 2)
  end

  def number_in_full(number)
    return @numbers[number] if @numbers.keys.include? number
  end

  def self.included(baseClass)
    
  end
end
