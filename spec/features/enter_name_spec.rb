feature 'Enter names on homepage' do
  scenario 'player can enter their name' do
    enter_name
    choose 'rock'
    click_button 'Play'
    expect(page).to have_content 'Jim'
  end
end
