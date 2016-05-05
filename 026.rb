dividir = lambda{ |dividendo, divisor|
  resto = 1
  resultado = (dividendo < divisor) ? '0.' : ''
  while (not resto.eql? 0) and (resultado.size < 1000) do
    (dividendo = dividendo * 10) if dividendo < divisor
    resultado << (dividendo / divisor).to_s
    resto = dividendo.modulo divisor
    dividendo = resto
  end
  resultado
}

acha_recorrencia = lambda{ |array|
  recorrence = []
  array.each_with_index{ |item, index|
    items_index = array.map.with_index{ |v, i| i if v.eql? item }.compact
    items_index.slice(1, items_index.size).each{ |item_index|
      tmp_recorrence, counter = [], 0
      while((array[counter + index].eql? array[counter + item_index]) && (not (counter + index).eql? item_index)) do
        tmp_recorrence << array[counter + index]
        counter += 1
      end
      recorrence = Array.new tmp_recorrence if tmp_recorrence.size > recorrence.size
    }
  }
  recorrence
}

# bigger = []
# bigger_divisor = 0
# (2..100).each{ |divisor|
#   resultado = dividir.call(1, divisor)
#   puts "Processing 1/#{divisor} = #{resultado}"
#   rec = acha_recorrencia.call(resultado.split('.')[1].split("").map(&:to_i))
#   bigger, bigger_divisor = Array.new(rec), divisor if rec.size > bigger.size
#   puts "done"
# }
# p bigger
# p bigger_divisor

#p acha_recorrencia.call ARGV[0].split("").map(&:to_i)
#https://en.wikipedia.org/wiki/Fermat's_little_theorem
puts (0..1000).map { |d|
  (1..d).find{ |t| (10**t % d) == 1 }
}
