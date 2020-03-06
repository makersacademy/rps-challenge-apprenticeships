feature 'Pick an option to play' do
  scenario 'Rock defeats Scissors' do 
    visit('/')
    fill_in 'name', with: 'Pikachu'
    click_button "Let's play!"
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content 'Pikachu won!'
  end 
end