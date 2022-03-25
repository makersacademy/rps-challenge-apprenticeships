feature 'Choosing attack' do
  scenario 'choosing' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_button 'Try again'
  end
end