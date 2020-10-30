feature 'Webpage loading correctly' do
  scenario 'Webpage returns status code 200' do
    visit '/'
    expect(page.status_code).to eq(200)
  end
end
