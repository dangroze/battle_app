def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Dan'
  fill_in :player2_name, with: 'Villain'
  click_button 'Submit'
end
