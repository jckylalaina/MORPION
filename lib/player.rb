require_relative 'show'
class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
attr_accessor :player1,:player2

  
  def initialize
    #TO DO : doit régler son nom, sa valeur, son état de victoire
   @show = Show.new.create_player
   @player1 = @show[0]
   @player2 = @show[1] 
  end
end
