Algoritmo "AleatorizandoSemRepetirN"
// Descri��o   : Este programa aleatoriza numeros em arrays sem que eles se repitam!
// Autor(a)    : Zack Bastos
Var
cartelaBingo : vetor[0..5,0..5] de inteiro
    i,j,m, n, numRandi, controler:inteiro
Inicio
    para i de 1 ate 5 FACA
        para j de 1 ate 5 FACA
            numRandi <- randi(999) //gera o n�mero randomico
            controler <- 0 //controlador para verificar se o numero j� foi inserido
            enquanto controler = 0 faca
                controler <- 1
                //bloco para verificar toda a matriz
                para m de 1 ate 5 FACA
                    para n de 1 ate 5 FACA
                        se cartelaBingo[m,n] = numRandi entao //caso o numero j� exista
                            numRandi <- randi(999) //gera o novo n�mero randomico
                            controler <- 0 //reinicia o controlador para verificar se o novo n�mero existe
                        fimse
                    fimpara
                fimpara
            fimenquanto
            cartelaBingo[i,j] <- numRandi //ao sair do enquanto, � garantido que o n�mero n�o existe na matriz, ent�o adiciona esse n�mero a matriz.
        fimpara
    fimpara
    
    para i de 1 ate 5 FACA
       para j de 1 ate 5 FACA
           escreva(cartelaBingo[i,j])
       fimpara
       escreval()
    fimpara
Fimalgoritmo