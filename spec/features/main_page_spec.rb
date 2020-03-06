require './app'

feature 'main page' do

  scenario 'Can show main page content' do
    visit '/'
    save_and_open_page
    expect(page).to have_content('Enter name')
    expect(page).to have_button('START!')
    expect(page).to have_field('Your Name:')
  end
end
