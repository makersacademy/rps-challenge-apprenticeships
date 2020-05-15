feature 'play' do
  scenario 'it lets you choose Rock' do
    visit('/play')
    expect(page).to have_content('Rock')
  end

  scenario 'it lets you choose scissors' do
    visit('/play')
    expect(page).to have_content('Scissors')
  end

  scenario 'it lets you choose Paper' do
    visit('/play')
    expect(page).to have_content('Paper')
  end

end
