class Game
  attr_reader :current_player, :other_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player, @other_player = @players.shuffle
    @board = Board.new
  end

  def switch_players
    @current_player, @other_player = @other_player, @current_player
  end

  def play
    puts "Let's start the game!"
    @board.display_board

    until @board.game_over?
      puts "#{current_player.name}, it's your turn!"
      move = current_player.get_move
      @board.place_move(move, current_player.symbol)
      @board.display_board
      switch_players
    end

    end_game_message
  end

  private

  def end_game_message
    if @board.winner
      puts "#{current_player.name} wins!"
    else
      puts "It's a draw!"
    end
  end
end

