# In England the currency is made up of pound, £, and pence, p, and there are
# eight coins in general circulation:
#    1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).
#It is possible to make £2 in the following way:
#    1×£1 + 1×50p + 2×20p + 1×5p + 1×2p + 3×1p
#How many different ways can £2 be made using any number of coins?

class Teste

  def initialize
    @coins = [1,2,5,10,20,50,100,200]
    @total = 0
  end

  def new_coin(i)
    ((@total += 1) && (return 1)) if (i.eql? 200)
    return 1 if (i > 200)
    (0..8).each{ |idx|
      should_abort = new_coin(i + @coins[idx])
      return 0 if not should_abort.eql? 0
    }
    return 0
  end

end

t = Teste.new
puts t.new_coin 0
