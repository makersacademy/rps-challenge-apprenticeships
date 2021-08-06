feature 'make choice' do
  scenario 'click button' do
    name_and_submit
    click_button 'rock'
    expect(page).to have_content('You chose rock')
  end
end
