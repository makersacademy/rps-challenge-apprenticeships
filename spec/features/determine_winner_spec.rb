feature 'Determine winner' do 
  scenario 'after the game, a winner is announced' do 
    sign_in
    allow_any_instance_of(Computer).to receive(:weapon).and_return(:Rock)
    click_button 'Scissors'
    expect(page).to have_content("Computron CRUSHES Patrick !!!")
  end
end
