describe 'enter name', type: :feature do
  it 'allows the user to register their name' do
    visit ('/')
    fill_in('player', with: 'John')
    click_button('Start!')
    expect(page).to have_content 'John vs Computer'
  end
end
