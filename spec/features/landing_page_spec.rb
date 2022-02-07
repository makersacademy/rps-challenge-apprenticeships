feature 'landing page' do
  scenario 'visit landing page' do
    visit '/'
    expect(page).to have_content('Enter your name')
  end
end
