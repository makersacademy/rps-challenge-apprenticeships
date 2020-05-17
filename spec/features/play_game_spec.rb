feature 'Play game' do

  scenario 'Player 1 chooses Rock' do
    visit('/rock')
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'Player 1 chooses Paper' do
    visit('/paper')
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'Player 1 chooses Scissors' do
    visit('/scissors')
    expect(page).to have_content 'You chose Scissors'
  end
end
