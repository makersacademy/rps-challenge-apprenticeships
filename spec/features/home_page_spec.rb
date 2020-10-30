feature 'home page' do
  scenario 'show correct content' do
    visit '/'
    expect(page).to have_content('Hello!')
  end
end
