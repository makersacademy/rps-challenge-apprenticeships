feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :marketeer_name, with: 'John'
    click_button 'Submit'

    save_and_open_page
    
    expect(page).to have_content 'John'
  end
end