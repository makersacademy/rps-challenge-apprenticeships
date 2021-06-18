feature 'index page is OK' do
  scenario 'visit index page' do
    visit '/'
    expect(page.status_code).to eq(200)
  end
end
