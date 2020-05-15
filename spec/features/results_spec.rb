feature 'Viewing the results' do
  scenario 'The winner is declared' do
    visit('/')
    fill_in :player_name, with: 'Jasmine'
    click_button 'PLAY GAME!'
    click_button 'ROCK'
    expect(page).to have_content 'CPU WINS!'
  end
end
