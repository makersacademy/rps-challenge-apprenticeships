feature 'logs in and shows a string with user name' do 
  scenario 'login, enter name and click submit' do 
    sign_in
    expect(page).to have_content "Welcome to the game Adam!"
  end 
end 
