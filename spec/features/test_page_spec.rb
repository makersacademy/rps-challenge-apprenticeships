feature 'Home page runs' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Rock, Paper, Scissors!')
  end
end
