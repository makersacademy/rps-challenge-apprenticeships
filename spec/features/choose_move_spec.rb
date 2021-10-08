feature 'making move:' do
  scenario 'visit play page' do
    visit "/play"
    expect(page.status_code).to eq 200
  end

  scenario 'play page has 3 options for move' do
    visit "/play"
    expect(page).to have_selector "input[name='move']", count: 3
  end

  scenario 'choose paper and get confirmation' do
    choose_radio("paper")
    expect(page).to have_content "Sasha chose paper"
  end
end
