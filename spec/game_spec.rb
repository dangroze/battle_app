require 'game'

RSpec.describe Game do
  describe '#attack' do
    it 'damages the player' do
      player2 = Player.new('Dan')
      game = Game.new
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
