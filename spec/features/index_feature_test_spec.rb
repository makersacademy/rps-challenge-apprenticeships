feature 'front page with list of options `/`' do
  scenario 'visit front page' do
    visit '/'
    expect(page).to have_content('ROCK PAPER SCISSORS LIZARD SPOCK!')
  end
  scenario 'visit front page' do
    visit '/'
    page.has_button?('1. Instructions')
  end
  scenario 'visit front page' do
    visit '/'
    expect(page).to have_button("2. Player vs Computer")
  end
  scenario 'visit front page' do
    visit '/'
    expect(page).to have_button("3. Player vs Player")
  end
end
