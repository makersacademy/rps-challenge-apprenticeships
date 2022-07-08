feature 'test page' do
  scenario 'visit test page' do
    visit '/rockpaperscissors'
    expect(page).to have_content('test page')
  end
end
