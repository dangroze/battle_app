require 'player'

feature 'Player name' do
  scenario 'it returns player name' do
    sign_in_and_play
    player1 = Player.new("Dan")
    expect(player1.name).to eq("Dan")
  end
end
