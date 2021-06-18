describe 'Registration' do
  scenario 'enter and submit player names' do
    sign_in_and_play
    expect(page).to have_content 'Starbuck vs. The Cylons'
  end

end
