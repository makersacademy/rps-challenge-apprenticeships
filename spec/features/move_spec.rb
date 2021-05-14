feature 'Choose Rock' do
  scenario 'choose rock and get confirmation' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Liam, you chose ROCK!'
  end
end

feature 'Choose Paper' do
  scenario 'choose paper and get confirmation' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Liam, you chose PAPER!'
  end
end

feature 'Choose Scissors' do
  scenario 'choose scissors and get confirmation' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Liam, you chose SCISSORS!'
  end
end

feature 'Oponents move' do
  scenario 'automatic response to players move is displayed' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Your oponent chose'
  end
end
