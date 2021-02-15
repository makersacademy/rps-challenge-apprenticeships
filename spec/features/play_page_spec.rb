feature 'play page' do

  scenario 'check can tick box' do
    sign_in_and_submit
    click_link 'Play'
    choose 'rock'
    expect(page).to have_checked_field('rock')
  end

  scenario 'check output after submit' do
    sign_in_and_submit
    click_link 'Play'
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_content('Meg chose rock')
    expect(page.text).to match(/Super Computer chose (rock|paper|scissors)/)
    expect(page.text).to match(/(Meg wins|It's a draw|Super Computer wins)/)
  end

  scenario 'check for replay button' do
    sign_in_and_submit
    click_link 'Play'
    choose 'rock'
    click_button 'Submit'
    expect(page).to have_link('Play again')
  end

end