#Problem 22

hash_with_names = {}
names = File.open('p022_names.txt')
        .readline
        .split(",")
        .sort
        .each_with_index{ |name, index|
            hash_with_names[index+1] = name
                                        .gsub('"','')
                                        .split("")
                                        .map{ |letter| letter.ord - 64 }
                                        .reduce(:+)
        }
p hash_with_names.map{ |key, value|
  key * value
}.reduce(:+)
