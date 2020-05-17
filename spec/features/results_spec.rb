feature 'Lets the player know whos won' do
  scenario 'The player beats the Computer' do
    visit('/')
    expect(page).to have_content 'The winner is'
  end
end
