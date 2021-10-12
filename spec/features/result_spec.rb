feature 'Game calculates result' do
  scenario 'player chooses rock and displayes result' do
    sign_in_play_and_choose_rock
    expect(page).to have_content 'You'
  end
end