require './app'

feature 'Rock Paper Scissors' do
  scenario 'see and select options' do
    sign_in_and_play
    expect(page).to have_button 'ROCK' 
    expect(page).to have_button 'PAPER' 
    expect(page).to have_button 'SCISSORS' 
  end
end
