feature 'informs user of a tie' do
  scenario 'user chooses the same option as computer' do
    sign_in_and_play
    srand(123)
    click_button 'Scissors'
    expect(page).to have_content "It's a tie! You both chose Scissors."
  end
end