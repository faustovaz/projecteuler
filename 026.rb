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
  (0..array.size).each{ |i|
    counter = 0
    item = array[i]
    next_item_index = array.slice(i+1, array.size).find_index(item)
    next_i = i
    next if next_item_index.nil?
    while not (counter + i).eql? next_item_index do
        break unless array[counter + i].eql? array[next_item_index + i]
        counter += 1
    end
  }
}

puts dividir.call ARGV[0].to_i, ARGV[1].to_i
