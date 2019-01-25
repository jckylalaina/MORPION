require_relative 'morpion'
require_relative 'player'

class Game
  attr_accessor :joueur1, :joueur2, :board
  def initialize
    #TO DO : créé 2 joueurs, créé un board
   @joueur1 = Player.new.player1
   @joueur2 = Player.new.player2
   puts @board = Board.new(" "," ")
  end


  def go
    # TO DO : lance la partie
    array=[@joueur1,@joueur2]
    while true
      for i in 0..1
        puts " #{array[i]}"
        if i==1
          player = "player1"
        else
          player = "player2"
        end
        name = array[i]
        turn(name,player)
      end
      
    end 
    puts "A bientot"   
end

  def turn(name,player)
    name = name
    player = player
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    puts "Tu joue quoi"
    value = gets.chomp
    Board.new("#{player}","#{value}").victory?

  end

end
Game.new.go