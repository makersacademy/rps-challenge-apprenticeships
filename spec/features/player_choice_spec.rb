require './app'

feature 'player choice' do
  scenario 'player can choose rock option' do
    sign_in_and_play
    click_link 'Rock'
  end
  scenario 'player can choose scissors option' do
    sign_in_and_play
    click_link 'Scissors'
  end
  scenario 'player can choose paper option' do
    sign_in_and_play
    click_link 'Paper'
  end
end
