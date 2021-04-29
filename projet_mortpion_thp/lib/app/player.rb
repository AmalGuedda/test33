class Player
  attr_accessor :joueur_nom, :joueur_symbol

  
  def initialize
    @joueur_nom = gets_nom
    @joueur_symbol = gets_symbol

    #On initialize les variables de nom de joueur et symbol

  end

  def show_state
    puts "Le joueur #{@joueur_nom} joue avec le jeton '#{@joueur_symbol}'"
  end

  private
  def gets_name
    print "Quel ton nom ? "
    nom = gets.chomp  
  end

  def gets_symbol
    
    print "Quel jeton souhaites-tu ? (X ou O) "
    symbol = gets.chomp.upcase
    while symbol != "X" && symbol != "O"
      puts "---> erreur de saisie: soit X ou O."
      print "Quel jeton souhaites-tu ? (X ou O) "
      symbol = gets.chomp.upcase
    end
    return symbol
  end

end