feature 'Pick RockPaperScissors' do
  
  scenario 'Player picks Rock' do
    sign_in_to_play
    click_link 'Rock'
    expect(page).to have_content 'Emma has picked Rock!'
  end

  scenario 'Player picks Paper' do
    sign_in_to_play
    click_link 'Paper'
    expect(page).to have_content 'Emma has picked Paper!'
  end

  scenario 'Player picks Scissors' do
    sign_in_to_play
    click_link 'Scissors'
    expect(page).to have_content 'Emma has picked Scissors!'
  end

end