class Fixnum

  @@ones = {
    1 => "one", 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
    6 => "six", 7 => 'seven', 8 => "eight", 9 => "nine", 10 => 'ten',
    11 => "eleven", 12 => "twelve", 13 => "thirteen",
    14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
    17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
  }
  @@tens = {
    20 => 'twenty', 30 => 'thirty', 40 => 'fourty', 50 => 'fifty',
    60 => 'sixty', 70 => 'seventy', 80 => 'eigthty', 90 => 'ninety'
  }
  @@thousand = {
    100 => 'one hundred', 1000 => 'one thousand'
  }

  def in_full
    actual_number = self
    all_numbers = @@ones.merge(@@tens).merge(@@thousand)
    return all_numbers[self] if all_numbers.keys.include? self
    return self.three_digit_number_in_full if self > 100
    self.two_digit_number_in_full
  end

  def three_digit_number_in_full
    return "" unless self > 100
    return "#{@@ones[self/100]} hundred" if (self.modulo 100).zero?
    "#{@@ones[self/100]} hundred and #{(self.modulo 100).two_digit_number_in_full}"
  end

  def two_digit_number_in_full
    return "" unless self < 100
    number = (self / 10) * 10
    modulo = self.modulo 10
    return "#{@@tens[number]} #{@@ones[modulo]}" if number > 0
    "#{@@ones[modulo]}"
  end

end
