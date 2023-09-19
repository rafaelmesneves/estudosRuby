valor_rotativo = 0
valor_parcelado = 0

# loop de compras
loop do
  puts 'Insira o valor da compra:'
  valor_compra = gets.chomp.to_f

  puts 'A compra é dividida? (s/n)'
  resposta = gets.chomp.downcase

if resposta == 's'
  puts 'Quantas parcelas?'
  parcelas = gets.chomp.to_i
  valor_parcelado += (valor_compra * parcelas).round(2)
else
  valor_rotativo += valor_compra.round(2)
end

  puts 'Deseja inserir outra compra? (s/n)'
  resposta = gets.chomp.downcase
break if resposta == 'n'
end

# Calculo do valor de compras parcelas+rotativo
valor_exclusivo = valor_rotativo + valor_parcelado.round(2)

# Verificando se o valor total ultrapassa o teto
limite_maximo = 2000.00

if valor_exclusivo > limite_maximo
  puts "O valor exclusivo do cliente é: #{valor_exclusivo}"
  puts "Atenção: O limite máximo de #{limite_maximo} reais foi atingido."
else
# Valor exclusivo
puts "O valor exclusivo do cliente é: #{valor_exclusivo}"
end