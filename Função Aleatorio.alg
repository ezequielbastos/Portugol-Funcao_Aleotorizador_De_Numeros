Algoritmo "AleatorizandoSemRepetirN"
// Descri��o   : Este programa numeros sem que eles se repitam!
// Autor(a)    : Zack Bastos
Var
    Vet_AL : vetor[0..10] de inteiro
    i, j, controler, numAleatorio : Inteiro
Inicio
      //Timer (150)
    Para i de 1 ate 10 faca
         numAleatorio <- randi(99) //gera o n�mero randomico
         controler <- 0  //controlador para verificar se o numero j� foi inserido
         enquanto controler = 0 faca
         controler <- 1
           //bloco para verificar o vetor
           Para j de 1 ate 10 faca
                 Se (Vet_AL[i] = numAleatorio) entao //caso o numero j� exista
                    numAleatorio <- randi(99)  //gera o novo n�mero randomico
                    controler <- 0 //reinicia o controlador para verificar se o novo n�mero existe
                 Fimse
           FimPara
        FimEnquanto
        //ao sair do enquanto, � garantido que o n�mero n�o existe na matriz,
        //ent�o adiciona esse n�mero a matriz.
        Vet_AL[i] <- numAleatorio
    FimPara

    Para i de 1 ate 10 faca
       escreval("Vet [",i,"] = ",Vet_AL[i])
    Fimpara

Fimalgoritmo