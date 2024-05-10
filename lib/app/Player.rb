class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def get_move
    puts "Enter your move (e.g., A1): "
    gets.chomp.upcase
  end
end
