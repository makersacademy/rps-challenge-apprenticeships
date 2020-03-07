feature 'Pick an option to play' do
  scenario 'Rock defeats Scissors' do 
    register_and_pick_rock
    expect(page).to have_content "Pikachu won!"
  end 
end