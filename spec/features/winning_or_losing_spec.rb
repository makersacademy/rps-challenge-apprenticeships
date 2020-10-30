feature "See if player 1 or player 2 won" do
  scenario 'the player wins' do
    sign_in_and_play()
    srand(4) # the computer will pick scissors
    click_button('rock')
    expect(page).to have_content "Ben is the winner!"
  end
end
