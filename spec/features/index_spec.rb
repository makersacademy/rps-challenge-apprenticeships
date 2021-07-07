feature 'test page' do
  scenario 'visit entry page' do
    visit '/'
    expect(page).to have_content('Enter Player Name:')
  end
end
