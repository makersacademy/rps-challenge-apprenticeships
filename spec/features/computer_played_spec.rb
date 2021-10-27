feature 'Computer result displayed' do
  scenario 'Computer result displayed after player chooses' do
    sign_in_play_and_choose_rock
    expect(page).to have_content 'Computer played'
  end
end