feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :marketeer_name, with: 'John'
    click_button 'Submit'

    save_and_open_page
    
    expect(page).to have_content 'Hi John'
    expect(page).to have_content 'Choose from the following options:'
    expect(page).to have_content 'Rock, Paper, Scissors'
    # expect(page).to have_field('choice', with: '')
    fill_in :choice, with: 'Rock'
    click_button 'Submit'

    save_and_open_page
    expect(page).not_to be_nil
  end
end