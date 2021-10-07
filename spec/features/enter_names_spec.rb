feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Kirsty'
    click_button 'Submit'
    
    save_and_open_page 
    
    expect(page).to have_content 'Kirsty'
  end
end
