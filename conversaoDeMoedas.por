/*—> Conversão de moedas :
 Crie um conversor de moedas que permite o usuário digitar o valor que deseja converter e dê a opção de 3 moedas internacionais*/
programa {
  inclua biblioteca Matematica --> mat
  funcao inicio() {
    real valor = 0
    escreva("Digite o valor em Reais:\n")
    leia(valor)
    escreva("Valor em Baht tailandês.", baht(valor), "\n")
    escreva("Valor em Won sul-coreano.", won(valor), "\n")
    escreva("Valor em Iene japonês.", iene(valor), "\n")
  }

  funcao real baht(real valor){
    retorne mat.arredondar((valor*7.24),2)
  }

  funcao real won(real valor){
    retorne mat.arredondar((valor*273.18),2)
  }

  funcao real iene(real valor){
    retorne mat.arredondar((valor*30.37),2)
  }
}
