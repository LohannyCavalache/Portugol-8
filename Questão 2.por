programa {
  funcao inicio() {
    inteiro nmrQuarto = 0, situacaoDoQuarto = 0
    caracter  quartos[10], continuar = 'S', ocupacao, livre = 'L', ocupado = 'O', statusQuarto = 'L'

    para(inteiro i = 0; i < 10; i++){
      quartos[i] = 'L'
    }
    enquanto(continuar == 'S'){
      escreva("Digite o número do quarto (1 a 10):\n")
      leia(nmrQuarto)
      nmrQuarto = nmrQuarto - 1
      escreva("O quarto", nmrQuarto + 1, " está livre ou ocupado?(L/O):\n")
      leia(ocupacao)
      se(statusQuarto == 'L' e ocupacao == 'L'){
        escreva("O quarto ", nmrQuarto + 1, " já está livre.\n")
        quartos[nmrQuarto] = livre
      }senao se(statusQuarto == 'L' e ocupacao == 'O'){
        escreva("O quarto ", nmrQuarto + 1, " foi ocupado.\n")
        quartos[nmrQuarto] = ocupado
      }senao se(statusQuarto == 'O' e ocupacao == 'L'){
        escreva("O quarto ", nmrQuarto + 1, " foi liberado.\n")
        quartos[nmrQuarto] = livre
      }senao se(statusQuarto == 'O' e ocupacao == 'O'){
        escreva("O quarto ", nmrQuarto + 1, " já está ocupado.\n")
        quartos[nmrQuarto] = ocupado
      }
      escreva("Deseja continuar?(S/N):\n")
      leia(continuar)
    }
    para(nmrQuarto = 0; nmrQuarto < 10; nmrQuarto++){
      escreva(nmrQuarto + 1, ": ", quartos[nmrQuarto], "\n")
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 597; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nmrQuarto, 3, 12, 9}-{quartos, 4, 14, 7}-{statusQuarto, 4, 82, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */