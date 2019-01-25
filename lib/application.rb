require_relative 'game'

class Application

  def initialize
    @game = Game.new
  end
  
  def perform
   puts "BIENVENUE DANS MORPION"
  while true
     puts "1.commencer a jouer"
     puts "4.quitter"
     print "->"
     params = gets.chomp
    case params
       when 1
         @game.new.go
       when 4 
       system "clear"
       puts "A bientôt!!"
       break
   else
       system "clear"
       puts "veuiller ressayer!!"  
     end 
    end

  end
end         	