feature 'Enter name page' do
  scenario 'Allows player to enter their name' do
    visit ('/enter-name')
    expect(page).to have_content ('Enter your name')
  end
end
