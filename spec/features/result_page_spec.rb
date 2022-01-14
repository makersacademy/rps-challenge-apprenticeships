feature 'displays the result of the match' do 
  scenario 'displays to the user whether they won or not' do 
    enter_name_and_start
    choose_rock
    expect(page).to have_content "Result"
  end

  scenario 'user can click the "play again" button to return to start an new round' do
    enter_name_and_start
    choose_rock
    find('#replay').click
    expect(page).to have_current_path("/play")
  end

  scenario 'user can click "home" to be brought back to the homepage' do 
    enter_name_and_start
    choose_rock
    find('#home').click
    expect(page).to have_current_path("/")
  end
end

# given (:other_user) { User.make(email: 'other@example.com', password: 'rous')}
