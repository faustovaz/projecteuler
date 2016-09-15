# In England the currency is made up of pound, £, and pence, p, and there are
# eight coins in general circulation:
#    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
#It is possible to make £2 in the following way:
#    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#How many different ways can £2 be made using any number of coins?

def change(coins, value)
  total = 0
  aux = value / coins.first
  new_coins = coins[1..-1] #Cut the first element of coins
  total = 1 if new_coins.size.zero?
  lambda{
    (aux.downto 0).each{ |i|
      new_value = value - (i * coins.first)
      total += 1 if new_value.zero?
      total += change(new_coins, new_value) if not new_value.zero?
    }
  }.call if not new_coins.size.zero?
  total
end
puts change [200, 100, 50, 20, 10, 5, 2, 1], 200
