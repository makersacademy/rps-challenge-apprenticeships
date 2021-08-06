
feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  scenario 'player can add their name for a personalised game' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Play Game')
    expect(page).to have_content "Player 1 vs. CPU"
  end

  scenario 'player can click either rock, paper, or scissors buttons' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Play Game')
    choose('rock')
    choose('paper')
    choose('scissors')
  end

  scenario 'player makes choice by selecting button and clicking Go' do
    visit "/"
    fill_in('player_1', with: 'Player 1')
    click_on('Play Game')
    choose('paper')
    click_on('Go')
    expect(page).to have_content('You selected Paper and the computer selected ')
  end
end


