feature 'Start a game:' do
  scenario '(1) Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
    expect(page).to have_content 'Start new game'
  end
end