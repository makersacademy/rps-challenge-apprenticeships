feature 'Register name' do
  scenario 'register player name' do
    visit '/'
    fill_in('name', with: 'John Wick')
    click_button('Submit')
    expect(page).to have_content('John Wick')
  end
end