
feature 'attack' do
  scenario 'attack and send confirmation' do
    visit('/play')
    choose 'paper'
    click_button 'Attack'
    expect(page).to have_content 'Your selected paper'
  end
end
