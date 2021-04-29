require_relative 'board_case'

class Board
    
	attr_accessor :ary_boardcase

	def initialize
		@case1 = BoardCase.new("A1",'.')
		@case2 = BoardCase.new("A2",'.')
		@case3 = BoardCase.new("A3",'.')
		@case4 = BoardCase.new("B1",'.')
		@case5 = BoardCase.new("B2",'.')
		@case6 = BoardCase.new("B3",'.')
		@case7 = BoardCase.new("C1",'.')
		@case8 = BoardCase.new("C2",'.')
		@case9 = BoardCase.new("C3",'.')
		@list_boardcase = [@case1,@case2,@case3,@case4,@case5,@case6,@case7,@case8,@case9]
	end

	def play_turn(board,joueur_actuel)

    input_ko = true
    
    while input_ko #quand c'est vrai 
      print "#{joueur_actuel.joueur_nom}, ton jeton est le '#{joueur_actuel.joueur_symbol}', quelle case souhaites-tu jouer ? "
      case_to_play = gets.chomp.upcase

      case case_to_play
      when "A1"   
          if board.list_boardcase[0].symbol == '.'
              board.list_boardcase[0].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "A2"
          if board.list_boardcase[1].symbol == '.'
              board.list_boardcase[1].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "A3"
          if board.list_boardcase[2].symbol == '.'
              board.list_boardcase[2].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B1"
          if board.list_boardcase[3].symbol == '.'
              board.list_boardcase[3].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B2"
          if board.list_boardcase[4].symbol == '.'
              board.list_boardcase[4].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "B3"
          if board.list_boardcase[5].symbol == '.'
              board.list_boardcase[5].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C1"
          if board.list_boardcase[6].symbol == '.'
              board.list_boardcase[6].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C2"
          if board.list_boardcase[7].symbol == '.'
              board.list_boardcase[7].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      when "C3"
          if board.list_boardcase[8].symbol =='.'
              board.list_boardcase[8].symbol  = joueur_actuel.joueur_symbol
              input_ko = false
          else
              puts "Case déjà occupée. Réessayes avec la bonne case !"
          end
      else 
          puts "erreur de case"
      end
    end
	end

	def victory?(board)
		
		# test combinaison horizontale
		# si cases sont identiques
		if board.list_boardcase[0].symbol == 'X' && board.list_boardcase[1].symbol == 'X' && board.list_boardcase[2].symbol == 'X'
			return true
		end
		if board.list_boardcase[0].symbol == 'O' && board.list_boardcase[1].symbol == 'O' && board.list_boardcase[2].symbol == 'O'
			return true
		end
		if board.list_boardcase[3].symbol == 'X' && board.list_boardcase[4].symbol == 'X' && board.list_boardcase[5].symbol == 'X'
			return true
		end
		if board.list_boardcase[3].symbol == 'O' && board.list_boardcase[4].symbol == 'O' && board.list_boardcase[5].symbol == 'O'
			return true
		end
		if board.list_boardcase[6].symbol == 'X' && board.list_boardcase[7].symbol == 'X' && board.list_boardcase[8].symbol == 'X'
			return true
		end
		if board.list_boardcase[6].symbol == 'O' && board.list_boardcase[7].symbol == 'O' && board.list_boardcase[8].symbol == 'O'
			return true
		end

		# test combinaison verticale
		# si cases sont identiques
		if board.list_boardcase[0].symbol == 'X' && board.list_boardcase[3].symbol == 'X' && board.list_boardcase[6].symbol == 'X'
			return true
		end
		if board.list_boardcase[0].symbol == 'O' && board.list_boardcase[3].symbol == 'O' && board.list_boardcase[6].symbol == 'O'
			return true
		end
		if board.list_boardcase[1].symbol == 'X' && board.list_boardcase[4].symbol == 'X' && board.list_boardcase[7].symbol == 'X'
			return true
		end
		if board.list_boardcase[1].symbol == 'O' && board.list_boardcase[4].symbol == 'O' && board.list_boardcase[7].symbol == 'O'
			return true
		end
		if board.list_boardcase[2].symbol == 'X' && board.list_boardcase[5].symbol == 'X' && board.list_boardcase[8].symbol == 'X'
			return true
		end
		if board.list_boardcase[2].symbol == 'O' && board.list_boardcase[5].symbol == 'O' && board.list_boardcase[8].symbol == 'O'
			return true
		end

		# test combinaison diagonale
		# si cases sont identiques
		if board.list_boardcase[0].symbol == 'X' && board.list_boardcase[4].symbol == 'X' && board.list_boardcase[8].symbol == 'X'
			return true
		end
		if board.list_boardcase[0].symbol == 'O' && board.list_boardcase[4].symbol == 'O' && board.list_boardcase[8].symbol == 'O'
			return true
		end
		if board.list_boardcase[2].symbol == 'X' && board.list_boardcase[4].symbol == 'X' && board.list_boardcase[6].symbol == 'X'
			return true
		end
		if board.list_boardcase[2].symbol == 'O' && board.list_boardcase[4].symbol == 'O' && board.list_boardcase[6].symbol == 'O'
			return true
		end

	end
end