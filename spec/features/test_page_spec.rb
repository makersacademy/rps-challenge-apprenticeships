feature 'test page' do
  scenario 'test infrastructure working' do
    visit '/'
    expect(page.status_code).to be(200)
  end
end
