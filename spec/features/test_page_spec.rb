feature 'test page' do
  scenario 'visit test page' do
    visit '/'
    expect(page).to have_content('Hello Game!')
  end
end
