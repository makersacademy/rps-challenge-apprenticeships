feature 'Welcome page' do
  scenario 'Welcome page has names' do
    start_game
    save_and_open_page
    expect(page).to have_content 'John'
   # expect(page).to have_content 'Dave'
  end
end
