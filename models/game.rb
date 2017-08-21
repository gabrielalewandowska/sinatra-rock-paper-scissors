class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    if (@player1 == "rock" && @player2 == "scissors") ||
      (@player1 == "scissors" && @player2 == "rock")
      return "Rock wins!"
    elsif (@player1 == "paper" && @player2 == "rock") ||
      (@player1 == "rock" && @player2 == "paper")
      return "Paper wins!"
    elsif (@player1 == "paper" && @player2 == "scissors") ||
      (@player1 == "scissors" && @player2 == "paper")
      return "Scissors win!"
    else
      return "It's a draw!"
    end
  end
end
