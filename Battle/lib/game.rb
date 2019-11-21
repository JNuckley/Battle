class Game

attr_reader :current_turn

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_turn = p1
  end

  def attack(player)
    if @current_turn == p1
      p2.receive_damage
    else
      p1.receive_damage
  end
end

  def p1
    @players.first
  end

  def p2
    @players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
