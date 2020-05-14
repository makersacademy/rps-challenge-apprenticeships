feature 'home page' do
  scenario 'user can enter name on home page' do
    visit '/'
    expect(page).to have_content('Enter your name!')
  end
end

feature 'home page' do
  scenario 'user can enter name on home page' do
    visit '/'
    click_button 'Play'
    expect(page).to have_content('Welcome to Rock Paper Scissors!')
  end
end
