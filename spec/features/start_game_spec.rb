require './app'

# The marketeer is presented with three choices
# rock, paper and scissors

feature '#play_game' do 
  
  scenario 'present rock, paper, scissor options' do 
    visit '/'
    fill_in :player, with: 'Shanice'
    click_button 'Submit'
    click_link 'Play Game'
    fill_in :player_selection, with: 'Paper'

    find_button('Submit').click
  end 


  # The marketeer can select an option:
  # rock, paper, scissors

  scenario 'player selects an option' do
    visit '/'
    fill_in :player, with: 'Shanice'
    click_button 'Submit'
    click_link 'Play Game'
    fill_in :player_selection, with: 'Rock'

    expect(page).to have_content 'You have selected Rock'
  end 
end 