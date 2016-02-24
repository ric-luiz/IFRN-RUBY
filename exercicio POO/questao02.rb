class Item
      attr_accessor :nome, :descricao, :valor
      def initialize(nome,descricao,valor)
            @nome = nome
            @descricao = descricao
            @valor = valor
      end
end

class Venda
      def initialize()
            @itensDeVenda = []
            @total = 0
      end

      def resgistrarItem(item)
            @itensDeVenda << item
      end

      def removerItem(nome)
            @itensDeVenda.delete_if {|v| v.nome == nome}
      end

      def calcularTotal()
            @itensDeVenda.each do |i| @total += i.valor end
            puts @total
      end

      def verItensRegistrados()
            @itensDeVenda.each do |i| puts i.nome end
      end
end

class Caixa
      def initialize
            @banana = Item.new('banana','fruta gostosa',5.00)
            @chocolate = Item.new('chocolate','Na categoria de doces',10.00)
            @biscoito = Item.new('biscoito','esse é o treloso',3.00)
            @venda = ''
      end
      def menu()
            puts  "               ######### MENU #########\n
                  1 - Iniciar Venda\n
                  2 - Resgistrar Item\n
                  3 - Remover Item\n
                  4 - Ver Itens Registrados\n
                  5 - Remover Itens\n
                  6 - Finalizar Venda\n
                  0 - Sair\n
                  "
            opcao = ''
            while opcao != 0
                  opcao = gets.to_i
                  case opcao
                  when 1
                        if @venda.class != Venda
                              @venda = Venda.new
                              puts "Venda iniciada"
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 2
                        if @venda.class == Venda
                              puts ' 1 - banana | 2 - chocolate | 3 - biscoito'
                              tipo = gets.to_i

                              case tipo
                              when 1
                                    tipo = @banana
                              when 2
                                    tipo = @chocolate
                              when 3
                                    tipo = @biscoito
                              end

                              @venda.resgistrarItem(tipo)

                              puts "Item Registrado"
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 3
                        if @venda.class == Venda
                              puts 'Qual item deseja remover?'
                              nome = gets.chomp
                              @venda.removerItem(nome)
                              puts "Item removido"
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 4
                        if @venda.class == Venda
                              @venda.verItensRegistrados
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 5
                        if @venda.class == Venda
                              puts 'Deseja Remover Todos os Itens?'
                              sim = gets.chomp
                              if sim == "sim"
                                    @venda.verItensRegistrados.each do |i| @venda.removerItem(i.nome) end
                              end
                              puts "Todos os Itens Foram Removidos"
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 6
                        if @venda.class == Venda
                              puts 'Deseja Finalizar a Venda?'
                              sim = gets.chomp
                              if sim == "sim"
                                    puts @venda.calcularTotal
                              end
                              puts "Venda realizada com Sucesso"
                        else
                              puts "Você deve iniciar uma venda (opcao 1)"
                        end
                  when 0
                        opcao = 0
                  else
                        puts "Opção inválida"
                  end
            end
      end

end

caixa = Caixa.new()
caixa.menu()
