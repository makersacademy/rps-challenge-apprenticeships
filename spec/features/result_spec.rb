feature 'Results given' do
  scenario 'player 1 chooses rock and computer chooses paper' do
    allow(play_game).to receive_message_chain(:player_2_name, :player_2_choice) { :paper }
    allow(play_game).to receive(:result).and_return("Computer wins!")
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content(:result)
  end
end
