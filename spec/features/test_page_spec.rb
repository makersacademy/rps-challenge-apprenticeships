require 'game'
feature 'pages' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
  scenario 'visit index should bring login' do
    visit '/'
    expect(page).to have_content('login')
  end
  scenario 'login should show user name' do
    sign_in_and_play
    expect(page).to have_content 'Charlotte'
  end
  scenario 'login should brings status' do
   sign_in_and_play
   expect(page).to have_content Game::STATUSSES[:make_choice]
 end

end
