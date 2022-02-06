feature 'Playing a game of Rock, Paper, Scissors' do
  scenario 'player chooses Rock' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Rock'

    expect(page).to have_content 'Player choice: Rock'
  end

  scenario 'player chooses Paper' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Paper'

    expect(page).to have_content 'Player choice: Paper'
  end

  scenario 'player chooses Scissors' do
    sign_in_and_play
    click_link 'Begin Game'
    click_link 'Scissors'

    expect(page).to have_content 'Player choice: Scissors'
  end
end
