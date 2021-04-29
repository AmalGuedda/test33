require_relative 'board'
require 'view/show'
require_relative 'player'


class Game
    attr_accessor :joueur_actuel, :status, :ary_player, :board

  def initialize
    # création 2 joueurs, créé un board, met le status à "on going", défini un joueur_actuel
    @player_1 = Player.new
    @player_2 = Player.new
    @ary_player = [@player_1,@player_2]
    @status = 'on going'

    # check du type de jeton
    if @player_1.joueur_symbol == @player_2.joueur_symbol
      puts "Attention, j'ai changé vos jetons car ils étaient identiques"
      if @player_1.joueur_symbol == 'X'
        @player_2.joueur_symbol = 'O'
      elsif @player_1.joueur_symbol == 'O'
        @player_2.joueur_symbol = 'X'
      end
    end
    @player_1.show_state
    @player_2.show_state
    # init du damier
    @board = Board.new
    # affiche le damier
    Show.new.show_board(@board)
  end

  def turn
    i=0
    while @status == 'on going' && i<9 #si le statut déclaré
      @joueur_actuel = @ary_player[i%2] # joueur alternativement index 0 ou 1
      @board.play_turn(@board, @joueur_actuel)
      
      # affiche tableau en-cours
      Show.new.show_board(@board)

      # check winner
      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i+=1 # compteur de tour
    end
  end

  def new_round
    print "Voulez-vous faire une nouvelle partie (O/N) ? "
                
    while choice != 'O' || choice != 'N' 
      if choice == 'O'
        @board = Board.new
        @status = "on going"
        puts '-' * 20
        p "On the road again, same players, shoot again"
        p "Commençons une nouvelle partie !"
        Show.new.show_board(@board)
        break
      elsif choice == 'N'
        puts "Ok, bye"
        exit
      end

      print "Choix erroné. Voulez-vous faire une nouvelle partie (O/N) ? "
      choice = gets.chomp.upcase

    end 
    puts choice
    p @status
  end

  def game_end
    if @status == 'on going'
      puts "Match nul"
    elsif @status == 'winner'
      puts "Bravo #{@joueur_actuel.joueur_nom}, t'as gagné"
    end
  end    

end
