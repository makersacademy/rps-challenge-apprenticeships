require './app'

feature 'main page' do
  scenario 'Can show main page content' do
    visit '/'
    save_and_open_page
    expect(page).to have_content('Enter your name')
  end
end
