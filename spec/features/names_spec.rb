feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_play
    expect(page).to have_content 'Luke vs John'
  end
end