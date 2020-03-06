feature 'Weapon' do
  scenario 'chose weapon' do
    sign_in_and_play
    expect(page).to have_content ("Ion, chose your weapon\n" "Rock\n" "Paper\n" "Scissors")
  end
end
