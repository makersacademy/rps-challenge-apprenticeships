feature 'user can enter their name' do
  scenario 'user enters their name and submits it' do
    sign_in_and_play
    expect(page).to have_content 'Aadam vs Computer'
  end
end
