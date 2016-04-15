# How many Sundays fell on the first of the month
# during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require 'date'

first_day_sundays = 0
(1901..2000).each{ |year|
  (1..12).each{ |month|
    d = Date.new year, month, 1
    first_day_sundays += 1 if d.sunday?
  }
}
p first_day_sundays

#In a more funcional way
first_day = Date.new 1901,1,1
last_day = Date.new 2000,12,1

p (first_day..last_day).select{ |date|
  date.sunday? and date.day.eql? 1
}.size
