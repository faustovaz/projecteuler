class Fixnum

  @@ones ||= {
        1 => "one", 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
        6 => "six", 7 => 'seven', 8 => "eight", 9 => "nine", 10 => 'ten',
        11 => "eleven", 12 => "twelve", 13 => "thirteen",
        14 => "fourteen", 15 => "fifteen", 16 => "sixteen",
        17 => "seventeen", 18 => "eighteen", 19 => "nineteen",
      }
  @@tens ||={
        20 => 'twenty', 30 => 'thirty', 40 => 'fourty', 50 => 'fifty',
        60 => 'sixty', 70 => 'seventy', 80 => 'eigthty', 90 => 'ninety'
  }

  def in_full
    all_numbers = @@ones.merge(@@tens)
    return all_numbers[self] if all_numbers.keys.include? self
    number = (self / 10) * 10
    modulo = self.modulo 10
    return "#{@@tens[number]} #{@@ones[modulo]}"
  end

end
