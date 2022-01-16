feature 'results' do
  scenario 'can see player and computers choice' do
    sign_in_and_play
    select('Rock', from: 'options')
    click_button 'submit'
    expect(page).to have_content "Computer"
  end
end
