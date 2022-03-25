feature 'enter names' do
  scenario 'submitting a name' do
    sign_in_and_play
    expect(page).to have_content "What'll it be, Bob?"
  end
end