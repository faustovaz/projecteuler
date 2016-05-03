def divida(dividendo, divisor)
  resto = 1
  resultado = (dividendo < divisor) ? '0.' : ''
  while (not resto.eql? 0) and (resultado.size < 10) do
    (dividendo = dividendo * 10) if dividendo < divisor
    resultado << (dividendo / divisor).to_s
    resto = dividendo.modulo divisor
    dividendo = resto
  end
  resultado
end

puts divida ARGV[0].to_i, ARGV[1].to_i
