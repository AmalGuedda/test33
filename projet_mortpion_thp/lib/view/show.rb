class Show
  attr_accessor :board

  def initialize
  end

  def show_board(board)
    puts " " * 4 + "1".green + " " * 3 + "2".green + " " * 3 + "3".green 
    puts "-".green * 15
    puts "A | ".green + board.ary_boardcase[0].token.yellow + " | ".green + board.ary_boardcase[1].token.yellow + " | ".green + board.ary_boardcase[2].token.yellow + " |".green
    puts "-".green * 15
    puts "B | ".green + board.ary_boardcase[3].token.yellow + " | ".green + board.ary_boardcase[4].token.yellow + " | ".green + board.ary_boardcase[5].token.yellow + " |".green
    puts "-".green * 15
    puts "C | ".green + board.ary_boardcase[6].token.yellow + " | ".green + board.ary_boardcase[7].token.yellow + " | ".green + board.ary_boardcase[8].token.yellow + " |".green
    puts "-".green * 15
  end
  
end
