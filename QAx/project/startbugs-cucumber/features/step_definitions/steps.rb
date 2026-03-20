Quando('eu acesso a página principal da StartBugs') do
  visit 'https://starbugs.vercel.app/'
  sleep 10
end

Então('eu devo ver uma lista de cafés disponíveis') do
  puts "Verificando a lista de cafés disponíveis"
end

