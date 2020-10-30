feature 'allow the computer player to pick a random attack' do
  scenario 'computer picks rock,paper or scissors' do
    sign_in_and_play()
    click_button('Paper')
    expect(page).to have_content "The computer picked:"
  end
end
