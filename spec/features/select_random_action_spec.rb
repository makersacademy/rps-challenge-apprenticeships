feature 'select random action' do
  scenario 'display random action for computer' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content('Rock vs. Rock').or have_content('Rock vs. Scissors').or have_content('Rock vs. Paper')
  end
end
