feature 'User has a choice of rock, paper or scissors' do
  scenario 'User can select one of the three options' do
    visit('/')
    fill_in :player_name, with: 'Odaine'
    click_button 'Submit'
    
    find_by_id('Rock')
    find_by_id('Paper')
    find_by_id('Scissors')
  end
end