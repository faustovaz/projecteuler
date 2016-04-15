triangle ="""3
7 4
2 4 6
8 5 9 3"""

p triangle.split("\n").map(&:split).map{ |elem| elem.map(&:to_i) }
