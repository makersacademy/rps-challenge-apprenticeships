feature 'infrastructure test' do
  scenario 'can test the page is working correctly' do
    visit('/')
    expect(page.status_code) == 200
  end
end