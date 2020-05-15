feature 'Testing infrastructure' do
  scenario 'can run app and change page content' do
    visit('/test')
    expect(page).to have_content "test page"
  end
end
