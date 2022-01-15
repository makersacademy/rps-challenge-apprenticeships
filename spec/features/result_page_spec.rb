feature 'displays the result of the match' do 
  scenario 'displays to the user whether they won or not' do 
    enter_name_and_start
    choose_rock
    expect(page).to have_content "If you wish to play again"
  end

  scenario 'user can click the "play again" button to return to start an new round' do
    enter_name_and_start
    choose_rock
    find('#replay').click
    expect(page).to have_current_path("/og-play")
  end

  scenario 'user can click "home" to be brought back to the homepage' do 
    enter_name_and_start
    choose_rock
    find('#home').click
    expect(page).to have_current_path("/")
  end

  scenario 'multiplayer mode: the users both choose rock' do
    two_players_enter_names
    choose_rock
    choose_rock
    expect(page).to have_content "It's a draw!"
  end

  scenario 'multiplayer mode: player one wins' do
    two_players_enter_names
    choose_rock
    select "Scissors", :from => "choice"
    click_button "Go!"
    expect(page).to have_content "Orla won"
  end

  scenario 'multiplayer mode: player two wins' do
    two_players_enter_names
    choose_rock
    select "Paper", :from => "choice"
    click_button "Go!"
    expect(page).to have_content "ABT won"
  end
end

# given (:other_user) { User.make(email: 'other@example.com', password: 'rous')}
