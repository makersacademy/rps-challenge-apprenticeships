feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'main page' do
  scenario 'visit main page' do
    visit '/'
    expect(page).to have_content('Welcome to RPS! Please enter your name')
  end
end
