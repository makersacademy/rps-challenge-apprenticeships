
feature 'Make your move' do
    scenario 'Player Jenny chooses rock' do
      visit('/')
      fill_in :player_name, with: 'Jenny'
      click_button 'Submit'
      select "rock", :from => "choices"
      click_on 'Submit'
    end
end
