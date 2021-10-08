feature 'choosing move' do
  scenario 'visit play page' do
    visit "/play"
    expect(page.status_code).to eq 200
  end

  scenario 'page has 3 options for move' do
    visit "/play"
    expect(page).to have_selector "input[name='move']", count: 3
  end
end
