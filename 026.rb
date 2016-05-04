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
  recorrencia = []
  (0..array.size - 1).each{ |i|
    item = array[i]
    next_item_index = array.map.with_index{ |v, i| i if v.eql? item}.compact
    next if next_item_index.size.eql? 1
    counter = 0
    while(not (counter + i).eql? next_item_index[1]) do
      recorrencia << array[counter + i]
      counter += 1
    end
    break
  }
  recorrencia
}

bigger = []
bigger_divisor = 0
(2..1000).each{ |divisor|
  resultado = dividir.call(1, divisor)
  rec = acha_recorrencia.call(resultado.split('.')[1].split("").map(&:to_i))
  bigger, bigger_divisor = Array.new(rec), divisor if rec.size > bigger.size
}
