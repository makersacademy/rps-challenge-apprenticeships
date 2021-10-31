feature 'test enter choice' do
  scenario 'submitting choice' do
    choose_and_play
    expect(page).to have_content "You have chosen: Scissors"
  end
end