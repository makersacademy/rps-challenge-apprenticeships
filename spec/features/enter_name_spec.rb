feature 'entering name' do
  scenario 'visit page' do
    visit "/"
    expect(page.status_code).to eq 200
  end
end
