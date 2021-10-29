feature 'it allows player to begin game' do
  scenario 'click start game does not raise an error' do
    sign_in_and_play
    expect(click_button 'Start Game').not_to raise_error 
  end
end