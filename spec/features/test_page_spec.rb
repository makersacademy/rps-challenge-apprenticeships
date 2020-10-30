feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end
end

feature 'homepage' do
  scenario 'vist home page' do
    visit '/home'
    expect(page).to have_content('Welcome to')
  end
  scenario 'displays field to allow user to input a name' do
    visit 'home'
    expect(page).to have_content('Enter your name')
  end
end
