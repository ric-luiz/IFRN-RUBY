class Sorteio
      def initialize(inicio,fim)
            #Garante que os numeros sejam inseridos na ordem crescente
            if fim > inicio
                  @inicio = inicio - 1
                  @fim = fim
            else
                  @inicio = fim - 1
                  @fim = inicio
            end
      end
      def sortear
            total = @fim - @inicio
            sorteados = []
            while sorteados.size != total
                  aleatorio = (1 + rand(total)) + @inicio
                  if !sorteados.include?(aleatorio)
                        sorteados << aleatorio
                  end
            end
            puts sorteados
      end
end

sorte = Sorteio.new(1,1)
sorte.sortear
