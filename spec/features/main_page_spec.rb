require './app'

feature 'main page' do

  scenario 'Can show main page content' do
    visit '/'
    expect(page).to have_content('Enter name')
    expect(page).to have_button('START!')
    expect(page).to have_field('name')
  end
end
