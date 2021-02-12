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
    expect(page).to have_content('You chose rock')
    expect(page.text).to match(/You chose (rock|paper|scissors)/)
  end


end