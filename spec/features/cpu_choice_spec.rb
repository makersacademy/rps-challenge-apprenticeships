feature 'cpu choice' do
  scenario 'cpu makes a random choice when player makes choice' do
    enter_name_and_play
    click_button 'Start'
    choose 'Paper', allow_label_click: true
    click_button 'Submit'

    expect(page).to have_content "CPU picked #{$computer_choice}!"
  end
end