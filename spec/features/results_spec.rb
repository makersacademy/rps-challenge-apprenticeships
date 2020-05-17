require './app'

feature 'Results' do
  scenario 'shows game results' do
    sign_in_and_play
    click_button 'ROCK'
    allow(Kernel).to receive(:rand).and_return('SCISSORS')
    expect(page).to have_content 'Kabir Wins!'
  end
end


# Need to return a fixed value for random on line 7