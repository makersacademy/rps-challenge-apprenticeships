feature 'Select from RPS' do
  scenario 'choose one from rps' do
    visit('/')
    fill_in :player_1_name, with: 'Sapna'
    click_button 'Submit'
    #save_and_open_page 
    expect(page).to have_content 'Sapna'
    expect(page).to have_content 'Welcome'
    find('#rps').find(:xpath, 'option[2]').select_option
    click_button 'Submit'
    save_and_open_page
    expect(page).not_to be_nil 
  end
end