feature 'Player registration' do
  scenario 'Player inputs name in form' do
    visit '/'
    fill_in :player1, with: 'Rich'
    click_button 'Submit'

    expect(page).to have_content('')
  end
end
