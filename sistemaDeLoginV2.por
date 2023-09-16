/*—> Sistema de login: 
Construa um sistema de login e verifique se as credenciais estão corretas. 
Se as credenciais estiverem erradas em 3 tentativas, bloqueie o usuário.*/

programa {
  
  cadeia usuario = "Aluno"
  cadeia senha = "VaiNaWeb"
  
  inteiro tentativas = 0
  logico finalizar = falso

  funcao inicio() {
    escreva("- Sistema de Login -")
    
    enquanto(tentativas < 3 e finalizar == falso) {
      cadeia usuario_input
      cadeia senha_input

      escreva("\nUsuário: ")
      leia(usuario_input)

      escreva("Senha: ")
      leia(senha_input)

      Verificar(usuario_input, senha_input)
    }
  }

  funcao Verificar(cadeia user, cadeia pass) {
  se(user == usuario e pass == senha) {
    escreva("\n- Login OK! -")
    finalizar = verdadeiro      
  }
  senao {
    tentativas++
    se(tentativas < 3) {
      escreva("- Login NEGADO! -")
    } senao {
      escreva("- Login BLOQUEADO!")
    }
  }
  }

}