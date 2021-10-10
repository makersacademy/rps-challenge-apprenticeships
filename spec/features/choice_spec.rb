feature 'Choose move' do
  scenario 'player chooses a move' do
    visit('/play')
    click_button 'rock'
    expect(page).to redirect '/result'
  end
end