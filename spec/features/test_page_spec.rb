feature 'entering names' do
  scenario 'Welcome screen' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
end
