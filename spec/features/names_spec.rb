feature 'Enter name' do
  scenario 'Submits name' do
    visit('/')
    fill_in :name, with: 'Marketeer'
    click_button 'Submit'

    expect(page).to have_content 'Marketeer'
  end
end