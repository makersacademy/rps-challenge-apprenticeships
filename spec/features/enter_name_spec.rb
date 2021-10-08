feature 'entering name' do
  scenario 'visit page' do
    visit "/"
    expect(page.status_code).to eq 200
  end

  scenario 'page has input field for name' do
    visit "/"
    expect(page).to have_field "player"
  end
end
