feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Welcome')
  end

  # scenario 'visit home page' do
  # visit('/')
  # fill_in :player_1_name, with: 'Yasmin'
  # fill_in :player_2_name, with: 'Neneh'
  # click_button 'Submit'
  # end 
  
end
