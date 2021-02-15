feature 'shows winner' do
  scenario 'check battle results' do
    fill_in_name
    choose "rock"
    click_button "Play"
    expect(page).to have_content('You chose rock')
  end
end