feature 'winner display' do
  scenario 'declares the winner' do
    enter_name_and_play
    click_button 'Start'
    choose 'Paper', allow_label_click: true
    click_button 'Submit'
    expect(page).to have_content "#{$winner} is the winner!"
  end
end
