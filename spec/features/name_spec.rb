feature 'filled out form' do
  scenario 'user is redirected to welcome page' do
    sign_in_and_play
    expect(page).to have_content "Welcome Player 1!"
    expect(page).to have_content "Welcome Player 2!"  
  end
end
