feature 'only one person is playing' do
  scenario 'user can enter their name' do 
    enter_name_and_start
    expect(page).to have_content "Megan, make your choice"
  end
end
