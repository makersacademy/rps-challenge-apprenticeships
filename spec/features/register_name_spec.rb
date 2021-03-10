feature 'Enter name' do
  scenario 'The player can enter their name' do
    visit('/')
    fill_in :name, with: 'Paul'
    click_button 'Start'
    expect(page).to have_content 'Paul'
  end
end
