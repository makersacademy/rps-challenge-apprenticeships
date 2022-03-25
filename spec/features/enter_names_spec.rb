feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Micha"
    fill_in :player_2_name, with: "Marcie"
    click_button 'Submit'
    expect(page).to have_content 'Micha vs. Marcie'
  end
end


