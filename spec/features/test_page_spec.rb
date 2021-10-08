feature 'index page structure' do
  scenario 'Can load form for user to fill their name' do
    visit('/')
    page.find('form')
  end

  scenario 'can submit form' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Alice'
  end
end
