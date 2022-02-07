feature 'enter name' do
  scenario 'check marketeer can enter name' do
    visit '/'
    fill_in :player, with: 'Abdul'
    click_button 'Lets play'
    save_and_open_page
    expect(page).to have_content('Abdul')
  end
end
