require_relative 'boardcase'


class Board
  attr_accessor :player ,:case_number,:value
  @@case =[@A1,@A2,@A3,@B1,@B2,@B3,@C1,@C2,@C3]  
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :array_board_cases


  def initialize(player,case_number)
    @player = player
    @case_number = case_number
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    @boardcase = BoardCase.new("#{@player}","#{@case_number}").to_s
    
  end

  def to_s
    system "clear"
  #TO DO : afficher le plateau
  puts "     1       2       3   "
  puts "  ----------------- "
  puts "A |  #{@@case[0]}   | #{@@case[1]}   |  #{@@case[2]}   |"
  puts "  -----------------"
  puts "B |  #{@@case[3]}   |  #{@@case[4]}  |   #{@@case[5]}  |"
  puts "  -----------------"
  puts "C |  #{@@case[6]}   |  #{@@case[7]}  |   #{@@case[7]}  |"
  puts "  ------------------"
  end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
    @value = @boardcase[0]
    @case_number = @boardcase[1].upcase
    system "clear"
    case @case_number
      when "A1" 
        if @@case[0] == nil
        @@case[0] = @value
      else
        puts "wrong"
      end
      when "A2"
      if @@case[1] == nil
        @@case[1] = @value
       else
      puts "wrong" 
       end 
      when "A3"  
        if @@case[2] == nil
        @@case[2] = @value
       else
      puts "wrong" 
       end
      when "B1"  
        if @@case[3] == nil
        @@case[3] = @value
       else
      puts "wrong" 
       end
      when "B2"  
        if @@case[4] == nil
        @@case[4] = @value
       else
      puts "wrong" 
       end
      when "B3"  
        if @@case[5] == nil
        @@case[5] = @value
       else
      puts "wrong" 
       end
      when "C1"
        if @@case[6] == nil
        @@case[6] = @value
       else
      puts "wrong" 
       end
      when "C2"  
      if @@case[7] == nil
        @@case[7] = @value
       else
      puts "wrong" 
       end
      when "C3"  
        if @@case[8] == nil
        @@case[8] = @value
       else

      puts "wrong" 
       end
      else 
      puts "erreur de case" 
      end
      @@case = @@case 
         
        puts "     1       2       3   "
  puts "  ------------------- "
  puts "A |  #{@@case[0]}   |   #{@@case[1]}   |  #{@@case[2]}  |"
  puts "  -------------------"
  puts "B |  #{@@case[3]}   |   #{@@case[4]}   |  #{@@case[5]}  |"
  puts "  -------------------"
  puts "C |  #{@@case[6]}   |   #{@@case[7]}   |  #{@@case[8]}  |"
  puts "  -------------------" 
  end
  def victory?
    #TO DO : qui gagne ?
    play
    ligne
    col
    diagonale
    if false
      puts "gagnééééé"
    end
  end 

  def ligne
    if @@case[0] != nil && @@case[0] == @@case[1] && @@case[1] == @@case[2] || @@case[5] != nil && @@case[5] == @@case[4] && @@case[4 ]== @@case[3] || @@case[6] != nil && @@case[6] == @@case[7] && @@case[7]== @@case[8] 
    system "clear"
    return false  
  else
  end
  end
   def col
    if @@case[0] != nil && @@case[0] == @@case[3] && @@case[3] == @@case[6] || @@case[2] != nil && @@case[2] == @@case[5] && @@case[5] == @@case[8] || @@case[1] != nil && @@case[1] == @@case[4] && @@case[4]== @@case[7] 
    system "clear"
    return false 
    
  else
  end
  end   
   def diagonale
    if @@case[0] != nil && @@case[0] == @@case[4] && @@case[4] == @@case[8] || @@case[2] != nil && @@case[4] == @@case[2] && @@case[4 ]== @@case[6] #|| @@case[2] != nil && @@case[2] == @@case[5] && @@case[5]== @@case[8] 
    system "clear"
   return false 
  else
  end
  end   
end







