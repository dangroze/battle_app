feature 'Enter hitpoints' do
  feature 'View hitpoints' do
    scenario 'submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Dan'
      fill_in :player_2_name, with: 'Villain'
      click_button 'Submit'
      expect(page).to have_content 'Dan(60) vs. Villain(60)'
    end
  end
