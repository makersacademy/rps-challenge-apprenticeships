feature 'play round' do

  before do
    allow_any_instance_of(Game).to(
         receive(:move).and_return('You win!')
          )
  end
  scenario 'play round and reveal winner' do
    log_in
    click_button "rock"
    expect(page).to have_content("You win!") 
  end
end
