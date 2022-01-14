feature 'player name' do
  scenario 'a player can login and see their name' do
    visit '/'
    fill_in 'name', with: 'jackie'
    click_button 'submit'
    expect(page).to have_content 'jackie'
  end
end
