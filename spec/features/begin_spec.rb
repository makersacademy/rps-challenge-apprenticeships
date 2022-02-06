feature 'Starting the game' do
  scenario 'submitting names' do
    sign_in_and_play
    click_link 'Begin Game'

    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
