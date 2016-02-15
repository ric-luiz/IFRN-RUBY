def quadrado_magico? (matriz)
      if matriz.class == Array

            n = matriz.size
            colunas = matriz[0].size
            ehMatriz = true
            elementosInteiros = true

            for i in matriz
                  if colunas != i.size
                        ehMatriz = false
                  end

                  for j in i
                        if j.class != Fixnum
                              elementosInteiros = false
                        end
                  end
            end

            if ehMatriz and elementosInteiros

                  somaL = 0
                  somaC = 0
                  somaDp = 0
                  somaDs = 0

                  for i in 0..(matriz.size-1)

                        for j in 0..(matriz[i].size-1)

                               somaL += matriz[i][j]
                               somaC += matriz[j][i]

                               if i == j
                                     somaDp += matriz[i][j]
                               end

                               if (i+1) + (j+1) == n+1
                                     somaDs += matriz[i][j]
                               end

                        end

                  end


                  if somaL == somaC and somaDp == somaDs and somaL/n == somaDs
                        return true
                  end

            end

            return false
      end
end


puts quadrado_magico?([[2,7,6],[9,5,1],[4,3,8]])
