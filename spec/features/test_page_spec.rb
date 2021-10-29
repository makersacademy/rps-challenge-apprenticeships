feature 'test page' do
  scenario 'visit home page' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
