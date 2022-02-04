feature 'Register names' do
  scenario 'submiting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sapna'
    fill_in :player_2_name, with: 'Priya'
    click_button 'Submit'
    save_and_open_page 
    expect(page).to have_content 'Sapna vs Priya'
  end
end


    