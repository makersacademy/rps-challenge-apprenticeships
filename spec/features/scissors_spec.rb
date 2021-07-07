feature 'Scissors' do
  scenario 'user pick scissors' do
    enter_name_submit
    click_link 'Start'
    click_link 'Paper'
    expect(page).to have_content 'You chose paper'
  end

  scenario 'user can play again' do
    enter_name_submit
    click_link "Start"
    click_link "Scissors"
    expect(page).to have_content 'Play again'
  end
end
