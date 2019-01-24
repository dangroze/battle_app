require 'player'

RSpec.describe Player do
  it 'returns player name' do
    player1 = Player.new("Dan")
    expect(player1.name).to eq("Dan")
  end
  describe '#hitpoints' do
    it 'returns the hitpoints' do
      player1 = Player.new('Krzys')
      expect(player1.hitpoints).to eq(Player::DEFAULT_HITPOINTS)
    end
  end
  # describe '#attack' do
  #   it 'damages the player' do
  #     player1 = Player.new('Krzys')
  #     player2 = Player.new('Dan')
  #     expect(player2).to receive(:receive_damage)
  #     player1.attack(player2)
  #   end
  # end
  describe '#receive_damage' do
    it 'reduces the hitpoints' do
      player2 = Player.new('Dan')
      expect{player2.receive_damage}.to change{player2.hitpoints}.by(-10)
    end
  end
end
