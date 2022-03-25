feature 'filled out form' do
  scenario 'user is redirected to welcome page' do
    sign_in_and_play
    expect(page).to have_content "Welcome user!" 
  end
end
