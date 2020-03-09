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
    # 1234 is the seed for 'Scissors'
    srand 1234 
    register_and_pick_rock
    expect(page).to have_content "Pikachu won!"
  end 
  
  scenario 'Scissors defeats Paper' do
    # 1236 is the seed for 'Paper'
    srand 1236
    register_and_pick_scissors
    expect(page).to have_content "Pikachu won!"
  end 
  scenario 'A tie' do 
    srand 1234 
    register_and_pick_scissors
    expect(page).to have_content "It is a tie!"
  end 

end