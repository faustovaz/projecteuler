#Problem 24
#Permute
require File.expand_path 'lib/heap_algorithm'

heaps = Heaps.new
permutations = heaps.permute((0..9).to_a).sort
p permutations[999_999]
