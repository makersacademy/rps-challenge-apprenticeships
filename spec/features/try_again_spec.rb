feature 'Trying again' do
  scenario 'try again' do
    sign_in_and_play
    click_button 'Rock'
    click_button 'Try again'
    expect(page).to have_content 'Ok Computer, pick one:'
  end
end
