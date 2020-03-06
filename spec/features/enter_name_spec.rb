feature 'Allow user to enter name' do 
  scenario 'shows name on page' do 
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button "Let's play!"
    expect(page).to have_content 'Hello Pikachu!'
  end 
end 