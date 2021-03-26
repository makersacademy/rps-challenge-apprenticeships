feature 'index' do 
  scenario 'sign up and play' do
    visit("/")
    fill_in :player_one_name, with: "Mark"
    click_button 'Register'
    expect(page).to have_content "Mark"
  end 
end
