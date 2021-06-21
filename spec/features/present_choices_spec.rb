feature 'Present choices' do
  scenario 'present 3 options to player' do
    sign_in_and_play
    expect(page).to have_content 'Emily: choose Rock, Paper or Scissors'
  end
end