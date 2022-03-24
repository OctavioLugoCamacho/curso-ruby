require_relative 'player'
require_relative 'die'

module GameTurn
  def self.take_turn(player)
      die = Die.new
      number_rolled = die.roll
      if number_rolled < 3
        player.blam
      elsif number_rolled < 5
        puts "#{player.name} was skipped."
      else
        player.w00t
      end
  end
end