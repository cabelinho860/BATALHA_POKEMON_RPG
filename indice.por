programa{
    funcao inicio() {
        programa {
  inclua biblioteca Graficos --> graficos 
  inclua biblioteca Util --> util 
  funcao inicio() {
    // estas funcionalidades da biblioteca de grafico são para a tela do jogo
    graficos.iniciar_modo_grafico(verdadeiro)
    graficos.definir_dimensoes_janela(800, 500)
    graficos.definir_titulo_janela("BATALHA POKEMON RPG ")
    // Desenho do céu da tela
    graficos.definir_cor(graficos.criar_cor(150, 216, 250))
    graficos.desenhar_retangulo(0,0, 800, 260, falso, verdadeiro)
    //desenhar da grama da tela do jogo
    graficos.definir_cor(graficos.criar_cor(120, 190, 100))
    graficos.desenhar_retangulo(0, 260, 800, 240, falso, verdadeiro)
    //desenhar a grama do pokemon inimigo
    graficos.definir_cor(graficos.criar_cor(90, 130, 80))
    graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)
    //desenha a grama do nosso pokemon
    graficos.definir_cor(graficos.criar_cor(80, 120, 70))
    graficos.desenhar_elipse(90, 365, 290, 75, verdadeiro)
    //desenho inicial do pokemon inimigo
    graficos.definir_cor(graficos.criar_cor(110, 60, 150))
    graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)
    // desenho inicial do nosso pokemon
    graficos.definir_cor(graficos.criar_cor(255, 215, 0))
    graficos.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro)
    // esta função é responsavel por mostrar a tela do jogo
    graficos.renderizar()
    escreva("Janela grafica! Utilizando a bliblioteca de graficos do portugol")
    // A função aguarde irá executar a janela por 5 segundos
    util.aguarde(5000)



   
    
  }
}


    }
}