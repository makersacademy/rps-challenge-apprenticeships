
feature '#playing a game of rock, paper, scissors' do
  
  scenario "the user can select rock, paper or scissors" do
    enter_name_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  # scenario 'player chooses rock' do
  #   enter_name_and_play
  #   click_button "Rock"
  #   expect(page).to have_content('Rock')
  # end
end
