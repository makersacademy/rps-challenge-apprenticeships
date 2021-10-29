feature 'Welcome page' do
  scenario 'Welcome page has names' do
    visit '/'
    fill_in 'player1_name', with: 'John'
    # fill_in 'player2_name', with: 'Dave'
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content 'John'
   # expect(page).to have_content 'Dave'
  end
end
