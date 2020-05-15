feature 'home page' do
  scenario 'user can enter name on home page' do
    visit '/'
    expect(page).to have_content('Enter your name!')
  end
end

feature 'home page' do
  scenario 'User can click play and enter game' do
    sign_in_and_play
    expect(page).to have_content('Hello Dave, welcome to Rock Paper Scissors. Lets Play!')
  end
end
