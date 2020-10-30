
# Tests if names are submitted
feature 'Taking Action' do

  scenario '#Waiting Room' do
    visit('/')

    # Fill in the form
    sign_in_and_play

    click_button 'p1-rock'

    expect(page).to have_content "Rock"
  end

  scenario '#Both Actions' do
    visit('/')

    # Fill in the form
    sign_in_and_play

    click_button 'p1-rock'
    click_button "Other's Choice"
    click_button 'p2-paper'

    expect(page).to have_content "Rock"
  end

  scenario '#Draw' do
    visit('/')

    # Fill in the form
    sign_in_and_play

    click_button 'p1-rock'
    click_button "Other's Choice"
    click_button 'p2-rock'

    expect(page).to have_content "Draw"
  end

end
