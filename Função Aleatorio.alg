algoritmo "Aleatorio"
// ======================================================================== |
// Função: Algoritmo para aleatorizar numeros sem repetição.
// Descrição: Com este escript e posivel criar games de bingo e simular I.A
//
// AUTOR: Zack Bastos
// Linkedin: www.linkedin.com/in/ezequiel-bastos-devjava/
// ======================================================================== |
var
   Vet_AL, Vet_Verif: Vetor[1..10] de Inteiro
   i, N_AL, QuantV: Inteiro
inicio
 Timer (150)
     Aleatorio On
     Aleatorio 1,10
     Leia (N_AL)
     Aleatorio Off
     LimpaTela
     
     Vet_Verif[1] <- N_AL
     QuantV <- 1
     
     Repita
     
         Aleatorio On
         Aleatorio 1,10
         Leia (N_AL)
         Aleatorio Off
         LimpaTela
          Timer (0)
         Para i <- 1 ate 10 faca
	          Vet_AL[i] <- N_AL
         Fimpara
          Timer (150)
         Para i <- 1 ate (QuantV) faca
           Se (Vet_AL[i] = Vet_Verif[i]) entao
              QuantV <- QuantV + 1
              QuantV <- QuantV - 1
              Aleatorio On
              Aleatorio 1,10
              Leia (N_AL)
              Aleatorio Off
              limpaTela
              Timer (0)
              para i <- 1 ate 10 faca
                Vet_AL[i] <- N_AL
              Fimpara

           Fimse
         Fimpara
          Timer (150)
         QuantV <- QuantV + 1
         Vet_Verif[QuantV] <- Vet_AL[i]
    Ate (QuantV = 10)
    
    Para i <- 1 ate 10 faca
       EscrevaL ("[",Vet_Verif[i],"]")
    FimPara
    

fimalgoritmo
