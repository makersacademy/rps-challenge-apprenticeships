feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Kyle'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Prepare for battle, Kyle!'
  end
end