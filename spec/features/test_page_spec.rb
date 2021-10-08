feature 'index page structure' do
  scenario 'Can load form for user to fill their name' do
    visit('/')
    page.find('form')
  end
end
