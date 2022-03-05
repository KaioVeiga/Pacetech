Algoritmo "Algoritmo Semana 4"

Var
   nome,decisao1,decisao1_1,decisao2_1: caractere
   tempCelcius,tempFahrenheit,valorReal,valorDolar,cotacaoDolar,RealxDolar,DolarxReal: real
   contador: inteiro
   CelsiusxFahrenheit,FahrenheitxCelsius: real
Inicio

   contador <- 0


   Escreval("Por favor, digite seu nome: ")
   leia (nome)
   limpatela

   Escreval("Ola ",nome,", seja bem-vindo/a!")
   Escreval("")
   Escreval("Insira abaixo a cotaçao atual do dolar: ")
   leia (cotacaoDolar)
   limpatela


   Repita
      //Menu Geral

      Escreval(nome,", escolha abaixo qual operaçao voce precisa realizar: ")
      Escreval("")
      Escreval("1 - Conversor de moeda")
      Escreval("2 - Conversor de temperatura")
      Escreval("0 - Sair ")
      leia(decisao1)
      contador <- 0
      limpatela


      se  decisao1 <> "0" entao
         Repita
            //Menu Moeda
            se decisao1 = "1" entao
               Escreval("Escolha abaixo qual opcao voce deseja: ")
               Escreval("1 - Converter Real para Dolar")
               Escreval("2 - Converter Dolar para Real")
               Escreval("0 - Voltar ao menu principal")
               leia(decisao1_1)
               limpatela

               se decisao1_1 = "1" entao
                  Escreval("Digite o valor em Real a ser convertido para Dolar")
                  leia (valorReal)
                  limpatela

                  RealxDolar <- valorReal / cotacaoDolar
                  Escreval("US$ ",RealxDolar:4:2)
                  Escreval("")

               senao
                  se decisao1_1 = "2" entao
                     Escreval("Digite o valor em Dolar a ser convertido para Real")
                     leia (valorDolar)
                     limpatela

                     DolarxReal <- valorDolar * cotacaoDolar
                     Escreval("R$ ",DolarxReal:4:2)
                     Escreval("")
                  senao
                     contador <- 1
                  fimse
               fimse
            senao

               //Menu Temp
               se decisao1 = "2" entao
                  Escreval("Escolha abaixo qual opcao voce deseja: ")
                  Escreval("1 - Converter Celsius para Fahrenheit")
                  Escreval("2 - Converter Fahrenheit para Celsius")
                  Escreval("0 - Voltar ao menu principal")
                  leia(decisao2_1)
                  limpatela

                  se decisao2_1 = "1" entao
                     Escreval("Digite a temperatura em Celsius a ser convertida para Fahrenheit")
                     leia (tempCelcius)
                     limpatela

                     CelsiusxFahrenheit <- (tempCelcius * 1.8 )+ 32
                     Escreval(CelsiusxFahrenheit:4:2," Fº")
                     Escreval("")

                  senao
                     se decisao2_1 = "2" entao
                        Escreval("Digite a temperatura em Fahrenheit a ser convertida para Celsius")
                        leia (tempFahrenheit)
                        limpatela

                        FahrenheitxCelsius <- (tempFahrenheit-32) / 1.8
                        Escreval(FahrenheitxCelsius:4:2," Cº")
                        Escreval("")
                     senao
                        contador <- 1
                     fimse
                  fimse

               fimse
            fimse
         ate contador >= 1
      senao
         decisao1 <- "0"
      fimse
   ate decisao1 = "0"

   Escreval("Obrigado ",nome," e ate a proxima!")

Fimalgoritmo