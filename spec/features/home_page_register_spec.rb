feature 'Can visit home page' do

  scenario 'enter blank name' do
    visit('/')
    fill_in 'name', with: ''
    click_button 'submit'
    expect(page).to have_content('You must enter a name!')
  end

  scenario 'visit home page and enter name' do
    visit('/')
    expect(page).to have_content('Please enter your name')
    fill_in 'name', with: 'Troy'
    click_button 'submit'
    expect(page).to have_content('Welcome Troy')
  end
end
