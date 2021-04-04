Algoritmo "AleatorizandoSemRepetirN"
// Descrição   : Este programa aleatoriza numeros em arrays sem que eles se repitam!
// Autor(a)    : Zack Bastos
Var
cartelaBingo : vetor[0..5,0..5] de inteiro
    i,j,m, n, numRandi, controler:inteiro
Inicio
    para i de 1 ate 5 FACA
        para j de 1 ate 5 FACA
            numRandi <- randi(999) //gera o número randomico
            controler <- 0 //controlador para verificar se o numero já foi inserido
            enquanto controler = 0 faca
                controler <- 1
                //bloco para verificar toda a matriz
                para m de 1 ate 5 FACA
                    para n de 1 ate 5 FACA
                        se cartelaBingo[m,n] = numRandi entao //caso o numero já exista
                            numRandi <- randi(999) //gera o novo número randomico
                            controler <- 0 //reinicia o controlador para verificar se o novo número existe
                        fimse
                    fimpara
                fimpara
            fimenquanto
            cartelaBingo[i,j] <- numRandi //ao sair do enquanto, é garantido que o número não existe na matriz, então adiciona esse número a matriz.
        fimpara
    fimpara
    
    para i de 1 ate 5 FACA
       para j de 1 ate 5 FACA
           escreva(cartelaBingo[i,j])
       fimpara
       escreval()
    fimpara
Fimalgoritmo