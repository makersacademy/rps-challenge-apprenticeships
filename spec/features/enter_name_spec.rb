feature 'Allows user to submit their name' do
  scenario 'player can enter their name on the home page' do
    submit_name
    expect(page).to have_content 'Heather'
  end
end