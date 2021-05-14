feature 'checks the results match the outcome' do
  scenario 'someone wins' do
    visit('/')
    sign_in_play
    click_button 'Paper'
    expect(page).to have_content 'Congratulations!'
  end
end