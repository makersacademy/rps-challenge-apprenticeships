feature 'Player move' do
  scenario 'Player first move' do
    register_and_play
    click_button "Rock"
    expect(page).to have_content "You chose Rock"
  end

#  scenario 'Computer chooses paper' do
#    register_and_play
#    click_button "Rock"
#    expect(page).to have_content "You chose Rock. The computer chose Paper. Paper beats rock. You lose."
#  end

#  scenario 'Computer chooses scissors' do

#  end

#  scenario 'Computer chooses rock' do

#  end

end
