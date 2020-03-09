feature 'Pick an option and play' do
  scenario 'shows player option' do 
    register_and_pick_rock
    expect(page).to have_content "#{$player_name} chose: #{$player_option}"
  end 

  scenario 'shows computer option' do 
    register_and_pick_rock
    $computer_option
    expect(page).to have_content "Computer chose: #{$computer_option}"
  end

  scenario 'Rock defeats Scissors' do 
    register_and_pick_rock
    allow($computer_option).to receive(:sample).and_return('Scissors')
    expect(page).to have_content "Pikachu won!"
  end 
  
  scenario 'Scissors defeats Paper' do 
    register_and_pick_scissors
    allow(@computer_option).to receive(:sample).and_return('Paper')
    expect(page).to have_content "Pikachu won!"
  end 
  scenario 'A tie' do 
    register_and_pick_scissors
    allow(@computer_option).to receive(:sample).and_return('Scissors')
    expect(page).to have_content "It is a tie!"
  end 


end