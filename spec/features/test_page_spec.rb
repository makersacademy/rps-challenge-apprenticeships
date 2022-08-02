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

feature 'new game' do
  scenario 'display new game page with name entered' do
    visit '/'
    fill_in 'name', with: 'Victoria'
    click_button "Submit"
    expect(page).to have_content('Hi Victoria! Please make your choice!')
  end
  
end