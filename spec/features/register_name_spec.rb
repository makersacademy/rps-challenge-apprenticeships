feature 'Register name' do
  scenario 'submits name' do
    register_and_play
    expect(page).to have_content 'Melissa vs. Computer'
  end
end
