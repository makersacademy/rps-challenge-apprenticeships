feature 'Enter name' do
  scenario 'submitting name' do
    visit('/')
    fill_in :name, with: 'Hamid'
    click_button 'Submit'
    expect(page).to have_content 'Hamid'
  end
end