feature 'add names to page' do
  scenario 'add the marketeers name' do
    enter_name('Drew')
    expect(page).to have_content 'Player name: Drew'
  end
end
