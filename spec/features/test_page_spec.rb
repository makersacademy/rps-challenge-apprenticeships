feature 'test page' do
  scenario 'visit test page' do
    visit '/'
    expect(page).to have_content('Enter your name')
  end
end
