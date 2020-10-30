
# Tests if names are submitted
feature 'Enter Names' do

  scenario '#Waiting Room' do
    visit('/')

    click_button 'Reset'

    # Fill in the form
    fill_in :player_1_name, with: 'David'
    click_button 'Player One Enter'

    expect(page).to have_content "Waiting for player 2..."
  end

  scenario '#Submitting All Names' do

    visit('/')
    sign_in_and_play

    # Check the new page has David vs Goliath
    expect(page).to have_content 'David'
    expect(page).to have_content 'Goliath'
  end
end
