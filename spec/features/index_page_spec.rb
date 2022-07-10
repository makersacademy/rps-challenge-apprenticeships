feature 'home page' do
  scenario 'visit home page greet user with player name box' do
    visit '/'
    expect(page).to have_content('Hello, please enter your name...')
  end
end
