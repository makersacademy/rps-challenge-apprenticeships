feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Ron'
    click_button 'Submit'

    expect(page).to have_content 'Bob vs. Ron'
  end
end
