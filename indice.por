programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500
  funcao vazio graficos_do_jogo(cadeia nome_meu_pokemon, cadeia nome_pokemon_inimigo, inteiro hp_meu_pokemon,inteiro hp_pokemon_inimigo, inteiro max_hp_meu_pokemon, inteiro max_hp_pokemon_inimigo, cadeia mensagem){
    // Desenho do ceu da tela
    graficos.definir_cor(graficos.criar_cor(150,216,250))
    graficos.desenhar_retangulo(0,0,LARGURA,260,falso,verdadeiro)
    //Desenho da grama da tela
    graficos.definir_cor(graficos.criar_cor(120,190,100))
    graficos.desenhar_retangulo(0,260,LARGURA,240,falso,verdadeiro)
    //Desenhar a sombra do pokemon Gengar
    graficos.definir_cor(graficos.criar_cor(90,130, 80))
    graficos.desenhar_elipse(475,165,250,65,verdadeiro)
    //Desenhar a sombra do nosso pokemon Pikachu
    graficos.definir_cor(graficos.criar_cor(90,130, 80))
    graficos.desenhar_elipse(90,365,290,75,verdadeiro)
    //Desenho inicial do pokemon Gengar
    graficos.definir_cor(graficos.criar_cor(110,60, 150))
    graficos.desenhar_retangulo(540,90,110,100,falso,verdadeiro)
    //Desenho inicial do nosso pokemon Pikachu
    graficos.definir_cor(graficos.criar_cor(255,215, 0))
    graficos.desenhar_retangulo(180,280,110,100,falso,verdadeiro)
    //Textos de informações do pokemon inimigo
    graficos.definir_cor(graficos.criar_cor(250,250,235))
    graficos.desenhar_retangulo(50,40,300,75,falso,verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(50,40,300,75,falso,falso)
    graficos.desenhar_texto(60,55,nome_pokemon_inimigo+ "  | HP : "+ hp_pokemon_inimigo + "  | " + max_hp_pokemon_inimigo)
    //Textos de informações do pokemon aliado
    graficos.definir_cor(graficos.criar_cor(250,250,235))
    graficos.desenhar_retangulo(450,310,300,75,falso,verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(450,310,300,75,falso,falso)
    graficos.desenhar_texto(465,372, nome_meu_pokemon+" | HP : "+ hp_meu_pokemon+ " | "+ max_hp_meu_pokemon)
    graficos.definir_cor(graficos.criar_cor(250,250,235))
    graficos.desenhar_retangulo(20,420,760,65,falso,verdadeiro)
    graficos.definir_cor(graficos.COR_PRETO)
    graficos.desenhar_retangulo(20,420,760,65,falso,falso)
    graficos.desenhar_texto(40,445,mensagem)

    //Está função mostra a tela do jogo
    graficos.renderizar()
  }
  funcao inicio() {
    //está funcionalidade da biblioteca de gráficos são para criar a tela do programa
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(LARGURA, ALTURA)
    graficos.definir_titulo_janela("Batalha Pokemon RPG")
    /*
    -Tipos de variaveis:
    -Inteiro Responsavel por contar numeros inteiros, sem casa decimal. Exemplo = 101
    -Real Responsavel por contar numeros com casas decimais. Exemplo = π
    -Cadeia Responsavel por armazenar um texto. Exemplo = "MORRA EMANUEL"
    -Caracter Responsavel por armazenar um caracter. Exemplo = J
    -Logico Responsavel por armazenar os valores de Verdadeiro ou Falso. Exemplo: Cadastro = Falso
    -Vazio é usado para o resultado de uma função que retorna normalmente, mas não fornece um valor de resultado ao seu chamada.
    */
    //Meu pokemom
    cadeia nome_meu_pokemon = "Pikachu"
    inteiro hp_meu_pokemon = 100
    inteiro max_hp_meu_pokemon = 100
    //informações pokemon inimigo
    cadeia nome_pokemon_inimigo = "Gengar"
    inteiro hp_pokemon_inimigo = 120
    inteiro max_hp_pokemon_inimigo = 120   
    graficos_do_jogo(nome_meu_pokemon, nome_pokemon_inimigo, hp_meu_pokemon, hp_pokemon_inimigo, max_hp_meu_pokemon, max_hp_pokemon_inimigo, "Um "+ nome_pokemon_inimigo+" Pokemon selvagem foi encontrado!")
    //ENTRADA: o jogo aguarde que o jogador faça alguma ação
    cadeia continuar
    escreva("Pressione ENTER para Atacar...")
    leia(continuar)
    /*
    * Operadores aritmeticos:
    * Soma (+)
    * Subtração (-)
    * Multiplicação (*)
    * Divisão (/)
    * Modulo de porcentagem (%) = (valor/100) 
    */
    inteiro dano = util.sorteia(22,35)
    hp_pokemon_inimigo = hp_pokemon_inimigo - dano 
    /*
    * Operadores Relacionais:
    * > valor de maior; exemplo: 3 > 2
    * < valor de menor; exemplo: 1 < 2
    * >= valor de maior ou igual;
    * <= valpr de menor ou igual:
    * == valor de comparação de igual;
    * != valor de comparação diferente;
    * Os operadores Relacionais retornam valores verdadeiro ou sinal
     */
    se(hp_pokemon_inimigo <= 0){
      hp_pokemon_inimigo = 0
    }
    se(hp_meu_pokemon <= 0){
      hp_meu_pokemon = 0
    }
    escreva(">> ", nome_meu_pokemon, " causou ", dano, " de dano! \n")
    escreva(">> Hp restante de ", nome_pokemon_inimigo, ": ", hp_pokemon_inimigo, " | ", max_hp_pokemon_inimigo)
    graficos_do_jogo(nome_meu_pokemon, nome_pokemon_inimigo, hp_meu_pokemon, hp_pokemon_inimigo, max_hp_meu_pokemon, max_hp_pokemon_inimigo, nome_meu_pokemon+" Causou "+ dano + " de dano!")
    logico infinitamente = verdadeiro
    enquanto(infinitamente == verdadeiro){
    se(hp_meu_pokemon == 0 ou hp_pokemon_inimigo == 0){
      infinitamente = falso
      escreva("\nBatalha encerrada!")
    }
  	util.aguarde(1000)
    }
  }
}