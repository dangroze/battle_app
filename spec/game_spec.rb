require 'game'

RSpec.describe Game do
  describe '#attack' do
    it 'damages the player' do
      player1 = Player.new('Krzys')
      player2 = Player.new('Dan')
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end
end
