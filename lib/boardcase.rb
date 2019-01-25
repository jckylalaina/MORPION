
class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
  attr_accessor :value, :case_number, :params
  
  def initialize(player,case_number)
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @player = player
    @case_number = case_number
   if @player == "player1" 
    @value = "X"
   @case_number = case_number
   else
   @value = "0"
   @case_number = case_number
   end 
  end
  def to_s
    #TO DO : doit renvoyer la valeur au format string
    @params = [@value ,@case_number]

  end

end