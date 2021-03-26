feature 'result' do
  
  scenario 'player one draws with cpu' do
    allow_any_instance_of(RandomSelection).to receive(:rps) { "Rock" }
    register_and_play
    
    choose "Rock"
    click_button 'Play'
    expect(page).to have_content "It's a Draw!"
  end

  scenario 'player one loses to cpu' do
    allow_any_instance_of(RandomSelection).to receive(:rps) { "Rock" }
    register_and_play
    
    choose "Scissors"
    click_button 'Play'
    expect(page).to have_content "Player 2 wins"
  end

  scenario 'player one wins against cpu' do
    allow_any_instance_of(RandomSelection).to receive(:rps) { "Rock" }
    register_and_play
    
    choose "Paper"
    click_button 'Play'
    expect(page).to have_content "Player 1 wins"
  end
  
end