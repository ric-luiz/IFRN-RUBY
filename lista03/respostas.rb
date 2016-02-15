#Questao 1
def maior2 (a,b)
      if a > b
            return a
      end
      return b
end

#Questao 2
def maior5 (a,b,c,d,e)
      if a>b && a>c && a>d && a>e
            return a
      elsif b>a && b>c && b>d && b>e
            return b
      elsif c>a && c>b && c>d && c>e
            return c
      elsif d>a && d>b && d>c && d>e
            return d
      end
      return e
end

#Questao 3
def quantidade_de_vogais (s)
      cont = 0
      if s.class == String
            s = s.split('')
            for i in s
                  if i == "a" or i == "e" or i == "i" or i == "o" or i == "u" or
                     i == "A" or i == "E" or i == "I" or i == "O" or i == "U"
                        cont += 1
                  end
            end
            return cont
      end
      return -1
end

#Questao 4
def impar? (n)
      return n%2 != 0
end

#Questao 5
def conta_palavras (texto)
      if texto.class == String
            texto = texto.chomp.split
            return texto.size
      end
end

#Questao 6
def intervalo_a_b (n1,n2)
      a = []
      for i in n1..n2
            a << i
      end
      return a
end

#Questao 7
def soma_elementos_matriz (m)
      soma = 0
      for i in m
            for j in i
                  soma += j
            end
      end
      return soma
end

#Questao 8
def fatorial (n)
      fat = 1
      for i in 2..n
            fat *= i
      end
      return fat
end

#Questao 9
def divisores (n)
      a = []
      for i in 1..n
            if n%i==0
                  a << i
            end
      end
      return a
end

#Questao 10
def primo? (n)
      primo = true
      for i in 2..(n-1)
            if n%i == 0 and n != 2
                  primo = false
            end
      end
      return primo
end

#Questao 11
def primos_entre_si? (n1,n2)
      primos = true
      a1=[]
      a2=[]

      for i in 1..n1
            if n1%i == 0
                  a1<<i
            end
      end

      for i in 1..n2
            if n2%i == 0
                  a2<<i
            end
      end

      for i in a1
            for j in a2
                  if i == j and i != 1 and j != 1
                        primos = false
                  end
            end
      end

      return primos
end

#Questao 12
def mdc (n1,n2)
      if n1 > n2
            divisor = n2
            dividendo = n1
      else
            divisor = n1
            dividendo = n2
      end

      while dividendo%divisor != 0
            divisao = dividendo%divisor
            dividendo = divisor
            divisor = divisao
      end
      return divisor
end

#Questao 13
def mmc (n1,n2)
      mul1 = n1
      mul2 = n2
      a1 = []
      a2 = []
      while mul1 != mul2
            a1 << mul1
            a2 << mul2
            mul1 += n1
            mul2 += n2

            for i in a1
                  for j in a2
                        if i == j
                              mul1 = i
                              mul2 = j
                        end
                  end
            end

      end
      return mul1
end

#Questao 14
def transcreve_numero (telefone)
      nome_numeros = ["zero","um","dois","tres","quatro","cinco","seis","sete","oito","nove"]
      num = []
      telefone = telefone.split('')
      for i in telefone
            if i == "0" or i == "1" or i == "2" or i == "3" or i == "4" or
               i == "5" or i == "6" or i == "7" or i == "8" or i == "9"
                  num << nome_numeros[i.to_i]
            end
      end
      return num
end

#Questao 15
def coincidencia_matriz(m1, m2)
      novo = [[],[],[]]
      for i in 0..(m1.size - 1)
            for m in 0..(m1[i].size-1)
                  if m1[i][m] == m2[i][m]
                        novo[i][m] = m1[i][m]
                  else
                        novo[i][m] = 0
                  end
            end
      end
      return novo
end

#Questao 16
def sublista_ordenada(m1)
      listaDivididas = [];
      lista = [];
      termoAnterior = m1[0]

      for i in m1
            if termoAnterior > i
                  listaDivididas << lista
                  lista = []
            end
            lista << i
            termoAnterior = i
      end
      listaDivididas << lista

      lista = listaDivididas[0]

      for i in listaDivididas
            if i.size > lista.size
                  lista = i
            end
      end

      return lista
end

#Questao 17
def triangular_superior? (m1)
      triangular = true;
      for i in 0..(m1.size - 1)
            for j in 0..(m1[i].size-1)
                  if i > j and m1[i][j] != 0
                        triangular = false;
                  end
            end
      end
      return triangular;
end

#Questao 18
def massa_molecula (molecula)
      molecula = molecula.split('')
      numMoleculas = []

      for i in molecula
            if i != 'H' and i != 'O' and i != 'C' and i.to_i < 1
                  return -1
            end
      end

      for i in 0..(molecula.size - 1)

            if molecula[i].to_i > 0
                  numero = ''
                  t = 0
                  while molecula[i+t].to_i > 0
                        numero += molecula[i+t]
                        t += 1
                  end

                  for j in 2..numero.to_i
                        numMoleculas << molecula[i-1]
                  end
                  i += t
            else
                  numMoleculas << molecula[i]
            end

      end

      massa = 0

      for i in numMoleculas
            if i == 'H'
                  massa += 1
            elsif i == 'O'
                  massa += 16
            elsif i == 'C'
                  massa += 12
            end
      end

      return massa
end

#Questao 19
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

#Questao 20
def move_direita(labirinto)

end
