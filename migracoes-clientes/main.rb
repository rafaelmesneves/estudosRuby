loop do
puts 'Qual é o valor da fatura do cliente?'

valor_fatura = gets.chomp.to_i

puts 'O cliente tem restrição? (s/n)'
resposta = gets.chomp.downcase

if resposta == "s"
  valor_limite = [valor_fatura, 800].min
elsif resposta == "n"
  valor_limite = [valor_fatura, 1500].min
else
  puts 'Resposta inválida. Use s ou n.'
  next
end

puts 'O cliente efetua os pagamentos corretamente? (s/n)'
resposta_fatura = gets.chomp.downcase

if resposta_fatura == "s"
  valor_final = [valor_limite, 1500].min
elsif resposta_fatura == "n"
  valor_final = [valor_limite, 800].min
else
  puts 'Resposta inválida. Use s ou n.'
  next
end

case [resposta, resposta_fatura]
when ["s", "s"]
  valor_final = [valor_final, 800].min
when ["s", "n"]
  puts 'Reprovar, fatura com pagamento incompleto'
  exit
when ["n", "s"]
  valor_final = [valor_final, 1500].min
when ["n", "n"]
  valor_final = [valor_final, 800].min
end

rotativo = (valor_final * 0.40).to_i
parcelado = (valor_final * 0.60).to_i

puts "Limite Rotativo: #{rotativo}, Limite Parcelado #{parcelado} e Exclusivo: 50"

puts 'pressione Enter para reiniciar ou digite "sair" para encerrar'
  reiniciar = gets.chomp.downcase
break if reiniciar != "" && reiniciar != "sair"
end
